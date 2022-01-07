; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_buildvm_lib.c_libdef_rec.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/host/extr_buildvm_lib.c_libdef_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@BUILD_recdef = common dso_local global i64 0, align 8
@recffid = common dso_local global i64 0, align 8
@ffid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c",\0A0\00", align 1
@funcname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c",\0A0x%02x00+(%s)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c",\0A0x%02x00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @libdef_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libdef_rec(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @UNUSED(i32 %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BUILD_recdef, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %27, %16
  %18 = load i64, i64* @recffid, align 8
  %19 = add nsw i64 %18, 1
  %20 = load i64, i64* @ffid, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22
  %28 = load i64, i64* @recffid, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* @recffid, align 8
  br label %17

30:                                               ; preds = %17
  %31 = load i64, i64* @ffid, align 8
  store i64 %31, i64* @recffid, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 46
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i8*, i8** @funcname, align 8
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 32)
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  store i8 0, i8* %44, align 1
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @find_rec(i8* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %56)
  br label %64

58:                                               ; preds = %46
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %51
  br label %65

65:                                               ; preds = %64, %3
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @find_rec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
