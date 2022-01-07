; ModuleID = '/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvs_decode_pairs.c'
source_filename = "/home/carl/AnghaBench/zfs/module/nvpair/extr_nvpair.c_nvs_decode_pairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*, i64*)*, {}* }

@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @nvs_decode_pairs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvs_decode_pairs(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %9

9:                                                ; preds = %75, %2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_7__*, i32*, i64*)*, i32 (%struct.TYPE_7__*, i32*, i64*)** %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = call i32 %14(%struct.TYPE_7__* %15, i32* null, i64* %7)
  store i32 %16, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %79

18:                                               ; preds = %9
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %79

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @NVP_SIZE_CALC(i32 1, i32 0)
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @EFAULT, align 4
  store i32 %27, i32* %3, align 4
  br label %81

28:                                               ; preds = %22
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32* @nvp_buf_alloc(i32* %29, i64 %30)
  store i32* %31, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %3, align 4
  br label %81

35:                                               ; preds = %28
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = bitcast {}** %39 to i32 (%struct.TYPE_7__*, i32*)**
  %41 = load i32 (%struct.TYPE_7__*, i32*)*, i32 (%struct.TYPE_7__*, i32*)** %40, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 %41(%struct.TYPE_7__* %42, i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @nvp_buf_free(i32* %47, i32* %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %81

51:                                               ; preds = %35
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @i_validate_nvpair(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @nvpair_free(i32* %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @nvp_buf_free(i32* %58, i32* %59)
  %61 = load i32, i32* @EFAULT, align 4
  store i32 %61, i32* %3, align 4
  br label %81

62:                                               ; preds = %51
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @nvt_add_nvpair(i32* %63, i32* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @nvpair_free(i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @nvp_buf_free(i32* %71, i32* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %81

75:                                               ; preds = %62
  %76 = load i32*, i32** %5, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @nvp_buf_link(i32* %76, i32* %77)
  br label %9

79:                                               ; preds = %21, %9
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %68, %55, %46, %33, %26
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @NVP_SIZE_CALC(i32, i32) #1

declare dso_local i32* @nvp_buf_alloc(i32*, i64) #1

declare dso_local i32 @nvp_buf_free(i32*, i32*) #1

declare dso_local i64 @i_validate_nvpair(i32*) #1

declare dso_local i32 @nvpair_free(i32*) #1

declare dso_local i32 @nvt_add_nvpair(i32*, i32*) #1

declare dso_local i32 @nvp_buf_link(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
