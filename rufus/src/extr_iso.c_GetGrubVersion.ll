; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_iso.c_GetGrubVersion.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_iso.c_GetGrubVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@__const.GetGrubVersion.unauthorized = private unnamed_addr constant [8 x i8] c"<>:|*?\\/", align 1
@__const.GetGrubVersion.grub_version_str = private unnamed_addr constant [17 x i8] c"GRUB  version %s\00", align 16
@img_report = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetGrubVersion(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca [17 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = bitcast [8 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.GetGrubVersion.unauthorized, i32 0, i32 0), i64 8, i1 false)
  %10 = bitcast [17 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.GetGrubVersion.grub_version_str, i32 0, i32 0), i64 17, i1 false)
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %20 = call i64 @memcmp(i8* %18, i8* %19, i32 17)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @img_report, i32 0, i32 0), align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, 17
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = call i32 @static_strcpy(i8* %23, i8* %27)
  br label %33

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %7, align 8
  br label %11

33:                                               ; preds = %22, %11
  %34 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @img_report, i32 0, i32 0), align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8* %35, i8** %5, align 8
  br label %36

36:                                               ; preds = %60, %33
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  store i64 0, i64* %7, align 8
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i64, i64* %7, align 8
  %43 = icmp ult i64 %42, 8
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %47, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i8*, i8** %5, align 8
  store i8 95, i8* %54, align 1
  br label %55

55:                                               ; preds = %53, %44
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %41

59:                                               ; preds = %41
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  br label %36

63:                                               ; preds = %36
  %64 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @img_report, i32 0, i32 0), align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 48
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @img_report, i32 0, i32 0), align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 0, i8* %71, align 1
  br label %72

72:                                               ; preds = %69, %63
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @static_strcpy(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
