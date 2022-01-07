; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_main.c_Usage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_main.c_Usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"\0AUsage:  ncftp [flags] [<host> | <directory URL to browse>]\0A\00", align 1
@.str.1 = private unnamed_addr constant [309 x i8] c"\0AFlags:\0A  -u XX  Use username XX instead of anonymous.\0A  -p XX  Use password XX with the username.\0A  -P XX  Use port number XX instead of the default FTP service port (21).\0A  -j XX  Use account XX with the username (rarely needed).\0A  -F     Dump a sample $HOME/.ncftp/firewall prefs file to stdout and exit.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\0AProgram version:  %s\0ALibrary version:  %s\0A\00", align 1
@gVersion = common dso_local global i8* null, align 8
@gLibNcFTPVersion = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [64 x i8] c"\0AThis is a freeware program by Mike Gleason (ncftp@ncftp.com).\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Use ncftpget and ncftpput for command-line FTP.\0A\0A\00", align 1
@UNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Usage() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @stderr, align 8
  store i32* %2, i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = call i32 (i32*, i8*, ...) @fprintf(i32* %3, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([309 x i8], [309 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32*, i32** %1, align 8
  %8 = load i8*, i8** @gVersion, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 5
  %10 = load i8*, i8** @gLibNcFTPVersion, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 5
  %12 = call i32 (i32*, i8*, ...) @fprintf(i32* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %9, i8* %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @exit(i32 2) #3
  unreachable
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
