; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_mtime.c_secstotimestr.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_mtime.c_secstotimestr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MSTRTIME_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%u:%02u:%02u\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%02u:%02u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @secstotimestr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i8* @secstotimestr(i8* %16, i32 %18)
  %20 = load i8*, i8** %4, align 8
  store i8 45, i8* %20, align 1
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %3, align 8
  br label %57

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @div(i32 %23, i32 60)
  %25 = bitcast %struct.TYPE_3__* %7 to i64*
  store i64 %24, i64* %25, align 4
  %26 = bitcast %struct.TYPE_3__* %6 to i8*
  %27 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 8, i1 false)
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @div(i32 %31, i32 60)
  %33 = bitcast %struct.TYPE_3__* %8 to i64*
  store i64 %32, i64* %33, align 4
  %34 = bitcast %struct.TYPE_3__* %6 to i8*
  %35 = bitcast %struct.TYPE_3__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %22
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* @MSTRTIME_MAX_SIZE, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %40, i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45, i32 %46)
  br label %55

48:                                               ; preds = %22
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* @MSTRTIME_MAX_SIZE, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %39
  %56 = load i8*, i8** %4, align 8
  store i8* %56, i8** %3, align 8
  br label %57

57:                                               ; preds = %55, %14
  %58 = load i8*, i8** %3, align 8
  ret i8* %58
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @div(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
