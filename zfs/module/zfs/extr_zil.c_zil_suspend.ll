; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zil.c_zil_suspend.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zil.c_zil_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }

@suspend_tag = common dso_local global i32 0, align 4
@ZIL_REPLAY_NEEDED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zil_suspend(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @suspend_tag, align 4
  %12 = call i32 @dmu_objset_hold(i8* %10, i32 %11, %struct.TYPE_15__** %6)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %3, align 4
  br label %200

17:                                               ; preds = %2
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = call %struct.TYPE_13__* @dmu_objset_zil(%struct.TYPE_15__* %18)
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %7, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = call i32 @mutex_enter(i32* %21)
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 5
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %8, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ZIL_REPLAY_NEEDED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %17
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = call i32 @mutex_exit(i32* %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = load i32, i32* @suspend_tag, align 4
  %38 = call i32 @dmu_objset_rele(%struct.TYPE_15__* %36, i32 %37)
  %39 = load i32, i32* @EBUSY, align 4
  %40 = call i32 @SET_ERROR(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %200

41:                                               ; preds = %17
  %42 = load i8**, i8*** %5, align 8
  %43 = icmp eq i8** %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = call i64 @BP_IS_HOLE(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54, %49
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = call i32 @mutex_exit(i32* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = load i32, i32* @suspend_tag, align 4
  %65 = call i32 @dmu_objset_rele(%struct.TYPE_15__* %63, i32 %64)
  store i32 0, i32* %3, align 4
  br label %200

66:                                               ; preds = %54, %44, %41
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %68 = call i32 @dmu_objset_ds(%struct.TYPE_15__* %67)
  %69 = load i32, i32* @suspend_tag, align 4
  %70 = call i32 @dsl_dataset_long_hold(i32 %68, i32 %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = call i32 @dmu_objset_pool(%struct.TYPE_15__* %71)
  %73 = load i32, i32* @suspend_tag, align 4
  %74 = call i32 @dsl_pool_rele(i32 %72, i32 %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %109

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %89, %83
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = call i32 @cv_wait(i32* %91, i32* %93)
  br label %84

95:                                               ; preds = %84
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = call i32 @mutex_exit(i32* %97)
  %99 = load i8**, i8*** %5, align 8
  %100 = icmp eq i8** %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %103 = call i32 @zil_resume(%struct.TYPE_15__* %102)
  br label %108

104:                                              ; preds = %95
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %106 = bitcast %struct.TYPE_15__* %105 to i8*
  %107 = load i8**, i8*** %5, align 8
  store i8* %106, i8** %107, align 8
  br label %108

108:                                              ; preds = %104, %101
  store i32 0, i32* %3, align 4
  br label %200

109:                                              ; preds = %66
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = call i64 @BP_IS_HOLE(i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %109
  %115 = load i8**, i8*** %5, align 8
  %116 = icmp ne i8** %115, null
  %117 = zext i1 %116 to i32
  %118 = call i32 @ASSERT(i32 %117)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = bitcast %struct.TYPE_15__* %119 to i8*
  %121 = load i8**, i8*** %5, align 8
  store i8* %120, i8** %121, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = call i32 @mutex_exit(i32* %123)
  store i32 0, i32* %3, align 4
  br label %200

125:                                              ; preds = %109
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %153

130:                                              ; preds = %125
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %132 = call i32 @dmu_objset_ds(%struct.TYPE_15__* %131)
  %133 = call i64 @dsl_dataset_create_key_mapping(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %130
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %137, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = call i32 @mutex_exit(i32* %141)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %144 = call i32 @dmu_objset_ds(%struct.TYPE_15__* %143)
  %145 = load i32, i32* @suspend_tag, align 4
  %146 = call i32 @dsl_dataset_long_rele(i32 %144, i32 %145)
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %148 = call i32 @dmu_objset_ds(%struct.TYPE_15__* %147)
  %149 = load i32, i32* @suspend_tag, align 4
  %150 = call i32 @dsl_dataset_rele(i32 %148, i32 %149)
  %151 = load i32, i32* @EACCES, align 4
  %152 = call i32 @SET_ERROR(i32 %151)
  store i32 %152, i32* %3, align 4
  br label %200

153:                                              ; preds = %130, %125
  %154 = load i64, i64* @B_TRUE, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 3
  store i64 %154, i64* %156, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = call i32 @mutex_exit(i32* %158)
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %161 = call i32 @zil_commit_impl(%struct.TYPE_13__* %160, i32 0)
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @txg_wait_synced(i32 %164, i32 0)
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %167 = load i64, i64* @B_FALSE, align 8
  %168 = call i32 @zil_destroy(%struct.TYPE_13__* %166, i64 %167)
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = call i32 @mutex_enter(i32* %170)
  %172 = load i64, i64* @B_FALSE, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 3
  store i64 %172, i64* %174, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 2
  %177 = call i32 @cv_broadcast(i32* %176)
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = call i32 @mutex_exit(i32* %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %153
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %187 = call i32 @dmu_objset_ds(%struct.TYPE_15__* %186)
  %188 = call i32 @dsl_dataset_remove_key_mapping(i32 %187)
  br label %189

189:                                              ; preds = %185, %153
  %190 = load i8**, i8*** %5, align 8
  %191 = icmp eq i8** %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %194 = call i32 @zil_resume(%struct.TYPE_15__* %193)
  br label %199

195:                                              ; preds = %189
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %197 = bitcast %struct.TYPE_15__* %196 to i8*
  %198 = load i8**, i8*** %5, align 8
  store i8* %197, i8** %198, align 8
  br label %199

199:                                              ; preds = %195, %192
  store i32 0, i32* %3, align 4
  br label %200

200:                                              ; preds = %199, %135, %114, %108, %59, %32, %15
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @dmu_objset_hold(i8*, i32, %struct.TYPE_15__**) #1

declare dso_local %struct.TYPE_13__* @dmu_objset_zil(%struct.TYPE_15__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dmu_objset_rele(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @BP_IS_HOLE(i32*) #1

declare dso_local i32 @dsl_dataset_long_hold(i32, i32) #1

declare dso_local i32 @dmu_objset_ds(%struct.TYPE_15__*) #1

declare dso_local i32 @dsl_pool_rele(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(%struct.TYPE_15__*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @zil_resume(%struct.TYPE_15__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @dsl_dataset_create_key_mapping(i32) #1

declare dso_local i32 @dsl_dataset_long_rele(i32, i32) #1

declare dso_local i32 @dsl_dataset_rele(i32, i32) #1

declare dso_local i32 @zil_commit_impl(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @zil_destroy(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @dsl_dataset_remove_key_mapping(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
