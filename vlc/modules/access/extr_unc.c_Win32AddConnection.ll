; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_unc.c_Win32AddConnection.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_unc.c_Win32AddConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@RESOURCETYPE_DISK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"\\\\%s\\%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"connected to %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"already connected to %s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to connect to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*, i8*)* @Win32AddConnection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Win32AddConnection(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = call i32 @memset(%struct.TYPE_4__* %11, i32 0, i32 16)
  %23 = load i32, i32* @RESOURCETYPE_DISK, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = trunc i64 %19 to i32
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  br label %33

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i8* [ %31, %29 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %32 ]
  %35 = call i32 @snprintf(i8* %21, i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %34)
  %36 = call i8* @strchr(i8* %21, i8 signext 47)
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i8*, i8** %14, align 8
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %39, %33
  %42 = call i32* @ToWide(i8* %21)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32* %42, i32** %43, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %10, align 8
  %48 = call i32* @ToWide(i8* %47)
  br label %50

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i32* [ %48, %46 ], [ null, %49 ]
  store i32* %51, i32** %16, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %9, align 8
  %56 = call i32* @ToWide(i8* %55)
  br label %58

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i32* [ %56, %54 ], [ null, %57 ]
  store i32* %59, i32** %17, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = call i32 @WNetAddConnection2(%struct.TYPE_4__* %11, i32* %60, i32* %61, i32 0)
  switch i32 %62, label %65 [
    i32 128, label %63
    i32 130, label %64
    i32 129, label %64
  ]

63:                                               ; preds = %58
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  br label %66

64:                                               ; preds = %58, %58
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  br label %66

65:                                               ; preds = %58
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  br label %66

66:                                               ; preds = %65, %64, %63
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @free(i32* %68)
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @free(i32* %70)
  %72 = load i32*, i32** %17, align 8
  %73 = call i32 @free(i32* %72)
  %74 = load i32*, i32** %6, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = call i32 @msg_Dbg(i32* %74, i8* %75, i8* %21)
  %77 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %77)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32* @ToWide(i8*) #2

declare dso_local i32 @WNetAddConnection2(%struct.TYPE_4__*, i32*, i32*, i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
