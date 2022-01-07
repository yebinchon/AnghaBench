; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_create_impl_dnstats.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_objset.c_dmu_objset_create_impl_dnstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__*, i32, i32 }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_25__ = type { i8** }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i64, i32, i32*, i32, i64 }

@DNODE_BLOCK_SIZE = common dso_local global i32 0, align 4
@DN_MAX_INDBLKSHIFT = common dso_local global i32 0, align 4
@DMU_OT_DNODE = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@DNODE_MIN_SLOTS = common dso_local global i32 0, align 4
@DNODE_SHIFT = common dso_local global i64 0, align 8
@SPA_BLKPTRSHIFT = common dso_local global i32 0, align 4
@DN_MAX_OBJECT = common dso_local global i64 0, align 8
@TXG_MASK = common dso_local global i64 0, align 8
@DMU_OST_NONE = common dso_local global i64 0, align 8
@DMU_OST_ANY = common dso_local global i64 0, align 8
@DMU_OST_NUMTYPES = common dso_local global i64 0, align 8
@OBJSET_FLAG_USERACCOUNTING_COMPLETE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@SPA_FEATURE_USEROBJ_ACCOUNTING = common dso_local global i64 0, align 8
@OBJSET_FLAG_USEROBJACCOUNTING_COMPLETE = common dso_local global i32 0, align 4
@SPA_FEATURE_PROJECT_QUOTA = common dso_local global i64 0, align 8
@OBJSET_FLAG_PROJECTQUOTA_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_24__* @dmu_objset_create_impl_dnstats(i32* %0, %struct.TYPE_25__* %1, i32* %2, i64 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_27__* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.TYPE_27__* %7, %struct.TYPE_27__** %16, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %20 = call i32 @dmu_tx_is_syncing(%struct.TYPE_27__* %19)
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32, i32* %14, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i32, i32* @DNODE_BLOCK_SIZE, align 4
  store i32 %25, i32* %14, align 4
  br label %26

26:                                               ; preds = %24, %8
  %27 = load i32, i32* %15, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @DN_MAX_INDBLKSHIFT, align 4
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %33 = icmp ne %struct.TYPE_25__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %36 = call i32 @dmu_objset_from_ds(%struct.TYPE_25__* %35, %struct.TYPE_24__** %17)
  %37 = call i32 @VERIFY0(i32 %36)
  br label %43

38:                                               ; preds = %31
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @dmu_objset_open_impl(i32* %39, i32* null, i32* %40, %struct.TYPE_24__** %17)
  %42 = call i32 @VERIFY0(i32 %41)
  br label %43

43:                                               ; preds = %38, %34
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %45 = call %struct.TYPE_26__* @DMU_META_DNODE(%struct.TYPE_24__* %44)
  store %struct.TYPE_26__* %45, %struct.TYPE_26__** %18, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %47 = load i32, i32* @DMU_OT_DNODE, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @DMU_OT_NONE, align 4
  %51 = load i32, i32* @DNODE_MIN_SLOTS, align 4
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %53 = call i32 @dnode_allocate(%struct.TYPE_26__* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 0, i32 %51, %struct.TYPE_27__* %52)
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %55 = icmp ne %struct.TYPE_25__* %54, null
  br i1 %55, label %56, label %102

56:                                               ; preds = %43
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %56
  store i32 1, i32* %13, align 4
  br label %60

60:                                               ; preds = %85, %59
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DNODE_SHIFT, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load i32, i32* %13, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SPA_BLKPTRSHIFT, align 4
  %76 = sub nsw i32 %74, %75
  %77 = mul nsw i32 %71, %76
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %69, %78
  %80 = trunc i64 %79 to i32
  %81 = shl i32 %64, %80
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* @DN_MAX_OBJECT, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %60
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %60

88:                                               ; preds = %60
  br label %89

89:                                               ; preds = %88, %56
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TXG_MASK, align 8
  %100 = and i64 %98, %99
  %101 = getelementptr inbounds i32, i32* %95, i64 %100
  store i32 %90, i32* %101, align 4
  br label %102

102:                                              ; preds = %89, %43
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* @DMU_OST_NONE, align 8
  %105 = icmp ne i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @ASSERT(i32 %106)
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* @DMU_OST_ANY, align 8
  %110 = icmp ne i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @ASSERT(i32 %111)
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* @DMU_OST_NUMTYPES, align 8
  %115 = icmp slt i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @ASSERT(i32 %116)
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 1
  store i64 %118, i64* %122, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %124 = call i64 @dmu_objset_userused_enabled(%struct.TYPE_24__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %188

126:                                              ; preds = %102
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %133 = call i32 @dmu_objset_is_receiving(%struct.TYPE_24__* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %188, label %135

135:                                              ; preds = %131, %126
  %136 = load i32, i32* @OBJSET_FLAG_USERACCOUNTING_COMPLETE, align 4
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %136
  store i32 %142, i32* %140, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %144 = call i64 @dmu_objset_userobjused_enabled(%struct.TYPE_24__* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %135
  %147 = load i64, i64* @B_TRUE, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = load i8**, i8*** %150, align 8
  %152 = load i64, i64* @SPA_FEATURE_USEROBJ_ACCOUNTING, align 8
  %153 = getelementptr inbounds i8*, i8** %151, i64 %152
  store i8* %148, i8** %153, align 8
  %154 = load i32, i32* @OBJSET_FLAG_USEROBJACCOUNTING_COMPLETE, align 4
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %154
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %146, %135
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %163 = call i64 @dmu_objset_projectquota_enabled(%struct.TYPE_24__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %161
  %166 = load i64, i64* @B_TRUE, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 0
  %170 = load i8**, i8*** %169, align 8
  %171 = load i64, i64* @SPA_FEATURE_PROJECT_QUOTA, align 8
  %172 = getelementptr inbounds i8*, i8** %170, i64 %171
  store i8* %167, i8** %172, align 8
  %173 = load i32, i32* @OBJSET_FLAG_PROJECTQUOTA_COMPLETE, align 4
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %173
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %165, %161
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %180, %131, %102
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %191 = call i32 @dsl_dataset_dirty(%struct.TYPE_25__* %189, %struct.TYPE_27__* %190)
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  ret %struct.TYPE_24__* %192
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(%struct.TYPE_27__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_objset_from_ds(%struct.TYPE_25__*, %struct.TYPE_24__**) #1

declare dso_local i32 @dmu_objset_open_impl(i32*, i32*, i32*, %struct.TYPE_24__**) #1

declare dso_local %struct.TYPE_26__* @DMU_META_DNODE(%struct.TYPE_24__*) #1

declare dso_local i32 @dnode_allocate(%struct.TYPE_26__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_27__*) #1

declare dso_local i64 @dmu_objset_userused_enabled(%struct.TYPE_24__*) #1

declare dso_local i32 @dmu_objset_is_receiving(%struct.TYPE_24__*) #1

declare dso_local i64 @dmu_objset_userobjused_enabled(%struct.TYPE_24__*) #1

declare dso_local i64 @dmu_objset_projectquota_enabled(%struct.TYPE_24__*) #1

declare dso_local i32 @dsl_dataset_dirty(%struct.TYPE_25__*, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
