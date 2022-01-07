; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_add_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap_micro.c_zap_add_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@MZAP_NAME_LEN = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32, i32, i8*, i32*, i8*)* @zap_add_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zap_add_impl(%struct.TYPE_13__* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8* %6, i8** %15, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call %struct.TYPE_14__* @zap_name_alloc(%struct.TYPE_13__* %21, i8* %22, i32 0)
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %18, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %25 = icmp eq %struct.TYPE_14__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %7
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = call i32 @zap_unlockdir(%struct.TYPE_13__* %27, i8* %28)
  %30 = load i32, i32* @ENOTSUP, align 4
  %31 = call i32 @SET_ERROR(i32 %30)
  store i32 %31, i32* %8, align 4
  br label %118

32:                                               ; preds = %7
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = call i32 @fzap_add(%struct.TYPE_14__* %38, i32 %39, i32 %40, i8* %41, i8* %42, i32* %43)
  store i32 %44, i32* %17, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %9, align 8
  br label %100

48:                                               ; preds = %32
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 8
  br i1 %50, label %66, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %66, label %54

54:                                               ; preds = %51
  %55 = load i8*, i8** %10, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = load i64, i64* @MZAP_NAME_LEN, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @mze_canfit_fzap_leaf(%struct.TYPE_14__* %60, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %59, %54, %51, %48
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i8*, i8** %15, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @mzap_upgrade(%struct.TYPE_13__** %68, i8* %69, i32* %70, i32 0)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 @fzap_add(%struct.TYPE_14__* %75, i32 %76, i32 %77, i8* %78, i8* %79, i32* %80)
  store i32 %81, i32* %17, align 4
  br label %82

82:                                               ; preds = %74, %66
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  store %struct.TYPE_13__* %85, %struct.TYPE_13__** %9, align 8
  br label %99

86:                                               ; preds = %59
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %88 = call i32* @mze_find(%struct.TYPE_14__* %87)
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @EEXIST, align 4
  %92 = call i32 @SET_ERROR(i32 %91)
  store i32 %92, i32* %17, align 4
  br label %98

93:                                               ; preds = %86
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @mzap_addent(%struct.TYPE_14__* %94, i32 %96)
  br label %98

98:                                               ; preds = %93, %90
  br label %99

99:                                               ; preds = %98, %82
  br label %100

100:                                              ; preds = %99, %37
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = icmp eq %struct.TYPE_13__* %101, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @ASSERT(i32 %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %109 = call i32 @zap_name_free(%struct.TYPE_14__* %108)
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %111 = icmp ne %struct.TYPE_13__* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %100
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = call i32 @zap_unlockdir(%struct.TYPE_13__* %113, i8* %114)
  br label %116

116:                                              ; preds = %112, %100
  %117 = load i32, i32* %17, align 4
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %116, %26
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_14__* @zap_name_alloc(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @zap_unlockdir(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @fzap_add(%struct.TYPE_14__*, i32, i32, i8*, i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mze_canfit_fzap_leaf(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @mzap_upgrade(%struct.TYPE_13__**, i8*, i32*, i32) #1

declare dso_local i32* @mze_find(%struct.TYPE_14__*) #1

declare dso_local i32 @mzap_addent(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zap_name_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
