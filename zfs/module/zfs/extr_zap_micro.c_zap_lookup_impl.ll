; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_lookup_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_lookup_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32, i8*, i32, i8*, i32, i32*)* @zap_lookup_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zap_lookup_impl(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5, i8* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %20, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i32, i32* %16, align 4
  %26 = call i32* @zap_name_alloc(%struct.TYPE_7__* %23, i8* %24, i32 %25)
  store i32* %26, i32** %21, align 8
  %27 = load i32*, i32** %21, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %9
  %30 = load i32, i32* @ENOTSUP, align 4
  %31 = call i32 @SET_ERROR(i32 %30)
  store i32 %31, i32* %10, align 4
  br label %98

32:                                               ; preds = %9
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %21, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i8*, i8** %15, align 8
  %42 = load i8*, i8** %17, align 8
  %43 = load i32, i32* %18, align 4
  %44 = load i32*, i32** %19, align 8
  %45 = call i32 @fzap_lookup(i32* %38, i32 %39, i32 %40, i8* %41, i8* %42, i32 %43, i32* %44)
  store i32 %45, i32* %20, align 4
  br label %94

46:                                               ; preds = %32
  %47 = load i32*, i32** %21, align 8
  %48 = call i32* @mze_find(i32* %47)
  store i32* %48, i32** %22, align 8
  %49 = load i32*, i32** %22, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOENT, align 4
  %53 = call i32 @SET_ERROR(i32 %52)
  store i32 %53, i32* %20, align 4
  br label %93

54:                                               ; preds = %46
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @EOVERFLOW, align 4
  %59 = call i32 @SET_ERROR(i32 %58)
  store i32 %59, i32* %20, align 4
  br label %92

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 8
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @EINVAL, align 4
  %65 = call i32 @SET_ERROR(i32 %64)
  store i32 %65, i32* %20, align 4
  br label %91

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = load i32*, i32** %22, align 8
  %69 = call %struct.TYPE_8__* @MZE_PHYS(%struct.TYPE_7__* %67, i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %15, align 8
  %73 = bitcast i8* %72 to i32*
  store i32 %71, i32* %73, align 4
  %74 = load i8*, i8** %17, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %76 = load i32*, i32** %22, align 8
  %77 = call %struct.TYPE_8__* @MZE_PHYS(%struct.TYPE_7__* %75, i32* %76)
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @strlcpy(i8* %74, i32 %79, i32 %80)
  %82 = load i32*, i32** %19, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %66
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %86 = load i32*, i32** %21, align 8
  %87 = load i32*, i32** %22, align 8
  %88 = call i32 @mzap_normalization_conflict(%struct.TYPE_7__* %85, i32* %86, i32* %87)
  %89 = load i32*, i32** %19, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %66
  br label %91

91:                                               ; preds = %90, %63
  br label %92

92:                                               ; preds = %91, %57
  br label %93

93:                                               ; preds = %92, %51
  br label %94

94:                                               ; preds = %93, %37
  %95 = load i32*, i32** %21, align 8
  %96 = call i32 @zap_name_free(i32* %95)
  %97 = load i32, i32* %20, align 4
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %94, %29
  %99 = load i32, i32* %10, align 4
  ret i32 %99
}

declare dso_local i32* @zap_name_alloc(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @fzap_lookup(i32*, i32, i32, i8*, i8*, i32, i32*) #1

declare dso_local i32* @mze_find(i32*) #1

declare dso_local %struct.TYPE_8__* @MZE_PHYS(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @mzap_normalization_conflict(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @zap_name_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
