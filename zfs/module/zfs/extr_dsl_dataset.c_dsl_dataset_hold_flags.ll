; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_hold_flags.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_dataset_hold_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32 }
%struct.TYPE_8__ = type { i64 }

@FTAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"looking for snapshot '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_hold_flags(i32* %0, i8* %1, i32 %2, i8* %3, %struct.TYPE_7__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.TYPE_7__** %4, %struct.TYPE_7__*** %11, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* @FTAG, align 4
  %21 = call i32 @dsl_dir_hold(i32* %18, i8* %19, i32 %20, i32** %12, i8** %13)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %6, align 4
  br label %121

26:                                               ; preds = %5
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @dsl_pool_config_held(i32* %27)
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load i32*, i32** %12, align 8
  %31 = call %struct.TYPE_8__* @dsl_dir_phys(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @dsl_dataset_hold_obj_flags(i32* %37, i64 %38, i32 %39, i8* %40, %struct.TYPE_7__** %16)
  store i32 %41, i32* %15, align 4
  br label %45

42:                                               ; preds = %26
  %43 = load i32, i32* @ENOENT, align 4
  %44 = call i32 @SET_ERROR(i32 %43)
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* %15, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %110

48:                                               ; preds = %45
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %110

51:                                               ; preds = %48
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %13, align 8
  %54 = load i8, i8* %52, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 64
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @dsl_dataset_rele_flags(%struct.TYPE_7__* %58, i32 %59, i8* %60)
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* @FTAG, align 4
  %64 = call i32 @dsl_dir_rele(i32* %62, i32 %63)
  %65 = load i32, i32* @ENOENT, align 4
  %66 = call i32 @SET_ERROR(i32 %65)
  store i32 %66, i32* %6, align 4
  br label %121

67:                                               ; preds = %51
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @dsl_dataset_snap_lookup(%struct.TYPE_7__* %70, i8* %71, i64* %14)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load i32*, i32** %7, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @dsl_dataset_hold_obj_flags(i32* %76, i64 %77, i32 %78, i8* %79, %struct.TYPE_7__** %17)
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %75, %67
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @dsl_dataset_rele_flags(%struct.TYPE_7__* %82, i32 %83, i8* %84)
  %86 = load i32, i32* %15, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %81
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = call i32 @mutex_enter(i32* %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 @strlcpy(i64* %101, i8* %102, i32 8)
  br label %104

104:                                              ; preds = %98, %88
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = call i32 @mutex_exit(i32* %106)
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %16, align 8
  br label %109

109:                                              ; preds = %104, %81
  br label %110

110:                                              ; preds = %109, %48, %45
  %111 = load i32, i32* %15, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %115 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** %115, align 8
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* @FTAG, align 4
  %119 = call i32 @dsl_dir_rele(i32* %117, i32 %118)
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %116, %57, %24
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i32 @dsl_dir_hold(i32*, i8*, i32, i32**, i8**) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(i32*) #1

declare dso_local %struct.TYPE_8__* @dsl_dir_phys(i32*) #1

declare dso_local i32 @dsl_dataset_hold_obj_flags(i32*, i64, i32, i8*, %struct.TYPE_7__**) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_dataset_rele_flags(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @dsl_dir_rele(i32*, i32) #1

declare dso_local i32 @dprintf(i8*, i8*) #1

declare dso_local i32 @dsl_dataset_snap_lookup(%struct.TYPE_7__*, i8*, i64*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @strlcpy(i64*, i8*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
