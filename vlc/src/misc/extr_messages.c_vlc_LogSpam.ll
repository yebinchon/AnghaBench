; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_messages.c_vlc_LogSpam.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_messages.c_vlc_LogSpam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"VLC media player - %s\00", align 1
@VERSION_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@COPYRIGHT_MESSAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"revision %s\00", align 1
@psz_vlc_changeset = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"configured with %s\00", align 1
@CONFIGURE_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @vlc_LogSpam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_LogSpam(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @VERSION_MESSAGE, align 4
  %5 = call i32 @msg_Dbg(i32* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @COPYRIGHT_MESSAGE, align 4
  %8 = call i32 @msg_Dbg(i32* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @psz_vlc_changeset, align 4
  %11 = call i32 @msg_Dbg(i32* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @CONFIGURE_LINE, align 4
  %14 = call i32 @msg_Dbg(i32* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %13)
  ret void
}

declare dso_local i32 @msg_Dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
