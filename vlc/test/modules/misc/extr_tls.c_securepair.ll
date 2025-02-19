; ModuleID = '/home/carl/AnghaBench/vlc/test/modules/misc/extr_tls.c_securepair.c'
source_filename = "/home/carl/AnghaBench/vlc/test/modules/misc/extr_tls.c_securepair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_LOCAL = common dso_local global i32 0, align 4
@server_creds = common dso_local global i32 0, align 4
@tls_echo = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_LOW = common dso_local global i32 0, align 4
@client_creds = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"vlc-tls-test\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i8**, i8**)* @securepair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @securepair(i32* %0, i8** %1, i8** %2, i8** noalias %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca [2 x i32*], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i32, i32* @PF_LOCAL, align 4
  %15 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  %16 = call i32 @vlc_tls_SocketPair(i32 %14, i32 0, i32** %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* @server_creds, align 4
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  %23 = load i32*, i32** %22, align 16
  %24 = load i8**, i8*** %7, align 8
  %25 = call i32* @vlc_tls_ServerSessionCreate(i32 %21, i32* %23, i8** %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @tls_echo, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @VLC_THREAD_PRIORITY_LOW, align 4
  %34 = call i32 @vlc_clone(i32* %30, i32 %31, i32* %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* @client_creds, align 4
  %40 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i8**, i8*** %8, align 8
  %43 = load i8**, i8*** %9, align 8
  %44 = call i32* @vlc_tls_ClientSessionCreate(i32 %39, i32* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %42, i8** %43)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %4
  %48 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @vlc_tls_SessionDelete(i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @vlc_join(i32 %52, i32* null)
  store i32* null, i32** %5, align 8
  br label %56

54:                                               ; preds = %4
  %55 = load i32*, i32** %12, align 8
  store i32* %55, i32** %5, align 8
  br label %56

56:                                               ; preds = %54, %47
  %57 = load i32*, i32** %5, align 8
  ret i32* %57
}

declare dso_local i32 @vlc_tls_SocketPair(i32, i32, i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @vlc_tls_ServerSessionCreate(i32, i32*, i8**) #1

declare dso_local i32 @vlc_clone(i32*, i32, i32*, i32) #1

declare dso_local i32* @vlc_tls_ClientSessionCreate(i32, i32*, i8*, i8*, i8**, i8**) #1

declare dso_local i32 @vlc_tls_SessionDelete(i32*) #1

declare dso_local i32 @vlc_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
