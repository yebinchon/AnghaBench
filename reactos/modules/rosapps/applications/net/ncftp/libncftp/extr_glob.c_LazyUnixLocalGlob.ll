; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_LazyUnixLocalGlob.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_LazyUnixLocalGlob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s -c \22%s %s %s\22\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/bin/ls\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@kDoPerror = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Could not Lglob: [%s]\0A\00", align 1
@kErrGlobFailed = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"  Lglob [%s]\0A\00", align 1
@kNoErr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i8*)* @LazyUnixLocalGlob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LazyUnixLocalGlob(%struct.TYPE_5__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %13)
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @popen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = load i32, i32* @kDoPerror, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @Error(%struct.TYPE_5__* %21, i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @kErrGlobFailed, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @kErrGlobFailed, align 4
  store i32 %28, i32* %4, align 4
  br label %53

29:                                               ; preds = %3
  %30 = load i32, i32* @SIGPIPE, align 4
  %31 = load i64, i64* @SIG_IGN, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @NcSignal(i32 %30, i32 %32)
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %39, %29
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = call i32* @FGets(i32 %35, i32 4, i32* %36)
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @PrintF(%struct.TYPE_5__* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @AddLine(i32 %43, i32 %44)
  br label %34

46:                                               ; preds = %34
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @pclose(i32* %47)
  %49 = load i32, i32* @SIGPIPE, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @NcSignal(i32 %49, i32 %50)
  %52 = load i32, i32* @kNoErr, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %46, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @popen(i8*, i8*) #1

declare dso_local i32 @Error(%struct.TYPE_5__*, i32, i8*, i8*) #1

declare dso_local i32 @NcSignal(i32, i32) #1

declare dso_local i32* @FGets(i32, i32, i32*) #1

declare dso_local i32 @PrintF(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @AddLine(i32, i32) #1

declare dso_local i32 @pclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
