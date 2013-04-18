class ffmpeg
{
    require repo_dag

    package {
        ["ffmpeg", "ffmpeg-devel", "ffmpeg-libpostproc"]:
            ensure => installed,
            provider => 'yum',
            require => Yumrepo['dag'];
    }
}