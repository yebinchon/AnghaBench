; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deleg.c_dsl_deleg_unset_sync.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_deleg.c_dsl_deleg_unset_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i64 }

@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"permission who remove\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"permission remove\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dsl_deleg_unset_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_deleg_unset_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call %struct.TYPE_6__* @dmu_tx_pool(i32* %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %7, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FTAG, align 4
  %29 = call i32 @dsl_dir_hold(%struct.TYPE_6__* %24, i32 %27, i32 %28, i32** %6, i32* null)
  %30 = call i32 @VERIFY0(i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call %struct.TYPE_8__* @dsl_dir_phys(i32* %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @FTAG, align 4
  %40 = call i32 @dsl_dir_rele(i32* %38, i32 %39)
  br label %131

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %126, %85, %74, %41
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32* @nvlist_next_nvpair(i32* %45, i32* %46)
  store i32* %47, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %127

49:                                               ; preds = %42
  %50 = load i32*, i32** %9, align 8
  %51 = call i8* @nvpair_name(i32* %50)
  store i8* %51, i8** %11, align 8
  store i32* null, i32** %13, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i64 @nvpair_value_nvlist(i32* %52, i32** %12)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %49
  %56 = load i32*, i32** %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i64 @zap_lookup(i32* %56, i64 %57, i8* %58, i32 8, i32 1, i64* %14)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %55
  %62 = load i32*, i32** %8, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @zap_remove(i32* %62, i64 %63, i8* %64, i32* %65)
  %67 = load i32*, i32** %8, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i64 @zap_destroy(i32* %67, i64 %68, i32* %69)
  %71 = icmp eq i64 0, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @VERIFY(i32 %72)
  br label %74

74:                                               ; preds = %61, %55
  %75 = load i32*, i32** %6, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 (i32*, i8*, i32*, i8*, i8*, ...) @spa_history_log_internal_dd(i32* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  br label %42

79:                                               ; preds = %49
  %80 = load i32*, i32** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = call i64 @zap_lookup(i32* %80, i64 %81, i8* %82, i32 8, i32 1, i64* %14)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %42

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %120, %86
  %88 = load i32*, i32** %12, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = call i32* @nvlist_next_nvpair(i32* %88, i32* %89)
  store i32* %90, i32** %13, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %126

92:                                               ; preds = %87
  %93 = load i32*, i32** %13, align 8
  %94 = call i8* @nvpair_name(i32* %93)
  store i8* %94, i8** %15, align 8
  store i64 0, i64* %16, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @zap_remove(i32* %95, i64 %96, i8* %97, i32* %98)
  %100 = load i32*, i32** %8, align 8
  %101 = load i64, i64* %14, align 8
  %102 = call i64 @zap_count(i32* %100, i64 %101, i64* %16)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %92
  %105 = load i64, i64* %16, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load i32*, i32** %8, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = load i32*, i32** %4, align 8
  %112 = call i32 @zap_remove(i32* %108, i64 %109, i8* %110, i32* %111)
  %113 = load i32*, i32** %8, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = call i64 @zap_destroy(i32* %113, i64 %114, i32* %115)
  %117 = icmp eq i64 0, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @VERIFY(i32 %118)
  br label %120

120:                                              ; preds = %107, %104, %92
  %121 = load i32*, i32** %6, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = call i32 (i32*, i8*, i32*, i8*, i8*, ...) @spa_history_log_internal_dd(i32* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %123, i8* %124)
  br label %87

126:                                              ; preds = %87
  br label %42

127:                                              ; preds = %42
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* @FTAG, align 4
  %130 = call i32 @dsl_dir_rele(i32* %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %37
  ret void
}

declare dso_local %struct.TYPE_6__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dir_hold(%struct.TYPE_6__*, i32, i32, i32**, i32*) #1

declare dso_local %struct.TYPE_8__* @dsl_dir_phys(i32*) #1

declare dso_local i32 @dsl_dir_rele(i32*, i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #1

declare dso_local i64 @zap_lookup(i32*, i64, i8*, i32, i32, i64*) #1

declare dso_local i32 @zap_remove(i32*, i64, i8*, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zap_destroy(i32*, i64, i32*) #1

declare dso_local i32 @spa_history_log_internal_dd(i32*, i8*, i32*, i8*, i8*, ...) #1

declare dso_local i64 @zap_count(i32*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
