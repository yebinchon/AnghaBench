; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_dsl_dir_hold.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dir.c_dsl_dir_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"looking up %s in obj%lld\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"next=%p (%s) tail=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dir_hold(%struct.TYPE_6__* %0, i8* %1, i8* %2, i32** %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i8** %4, i8*** %10, align 8
  store i8* null, i8** %14, align 8
  %19 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %20 = load i32, i32* @KM_SLEEP, align 4
  %21 = call i8* @kmem_alloc(i32 %19, i32 %20)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @getcomponent(i8* %22, i8* %23, i8** %13)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %170

28:                                               ; preds = %5
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @spa_name(i32 %31)
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i64 @strcmp(i8* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @EXDEV, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %15, align 4
  br label %170

40:                                               ; preds = %28
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = call i32 @dsl_pool_config_held(%struct.TYPE_6__* %41)
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @dsl_dir_hold_obj(%struct.TYPE_6__* %44, i32 %47, i8* null, i8* %48, i32** %16)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %170

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %113, %53
  %55 = load i8*, i8** %13, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %119

57:                                               ; preds = %54
  %58 = load i8*, i8** %13, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @getcomponent(i8* %58, i8* %59, i8** %14)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %119

64:                                               ; preds = %57
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 64
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %119

78:                                               ; preds = %64
  %79 = load i8*, i8** %11, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = call %struct.TYPE_7__* @dsl_dir_phys(i32* %80)
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 (i8*, i8*, i8*, ...) @dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %79, i8* %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %16, align 8
  %91 = call %struct.TYPE_7__* @dsl_dir_phys(i32* %90)
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 @zap_lookup(i32 %89, i32 %93, i8* %94, i32 4, i32 1, i32* %17)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %78
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @ENOENT, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 0, i32* %15, align 4
  br label %103

103:                                              ; preds = %102, %98
  br label %119

104:                                              ; preds = %78
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = load i32, i32* %17, align 4
  %107 = load i8*, i8** %11, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @dsl_dir_hold_obj(%struct.TYPE_6__* %105, i32 %106, i8* %107, i8* %108, i32** %18)
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %119

113:                                              ; preds = %104
  %114 = load i32*, i32** %16, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @dsl_dir_rele(i32* %114, i8* %115)
  %117 = load i32*, i32** %18, align 8
  store i32* %117, i32** %16, align 8
  %118 = load i8*, i8** %14, align 8
  store i8* %118, i8** %13, align 8
  br label %54

119:                                              ; preds = %112, %103, %77, %63, %54
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32*, i32** %16, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = call i32 @dsl_dir_rele(i32* %123, i8* %124)
  br label %170

126:                                              ; preds = %119
  %127 = load i8*, i8** %13, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %157

129:                                              ; preds = %126
  %130 = load i8**, i8*** %10, align 8
  %131 = icmp eq i8** %130, null
  br i1 %131, label %141, label %132

132:                                              ; preds = %129
  %133 = load i8*, i8** %14, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %157

135:                                              ; preds = %132
  %136 = load i8*, i8** %14, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %135, %129
  %142 = load i32*, i32** %16, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = call i32 @dsl_dir_rele(i32* %142, i8* %143)
  %145 = load i8*, i8** %13, align 8
  %146 = load i8*, i8** %13, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %141
  %149 = load i8*, i8** %13, align 8
  br label %151

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150, %148
  %152 = phi i8* [ %149, %148 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %150 ]
  %153 = load i8**, i8*** %10, align 8
  %154 = call i32 (i8*, i8*, i8*, ...) @dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %145, i8* %152, i8** %153)
  %155 = load i32, i32* @ENOENT, align 4
  %156 = call i32 @SET_ERROR(i32 %155)
  store i32 %156, i32* %15, align 4
  br label %157

157:                                              ; preds = %151, %135, %132, %126
  %158 = load i8**, i8*** %10, align 8
  %159 = icmp ne i8** %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i8*, i8** %13, align 8
  %162 = load i8**, i8*** %10, align 8
  store i8* %161, i8** %162, align 8
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i32, i32* %15, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32*, i32** %16, align 8
  %168 = load i32**, i32*** %9, align 8
  store i32* %167, i32** %168, align 8
  br label %169

169:                                              ; preds = %166, %163
  br label %170

170:                                              ; preds = %169, %122, %52, %37, %27
  %171 = load i8*, i8** %11, align 8
  %172 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %173 = call i32 @kmem_free(i8* %171, i32 %172)
  %174 = load i32, i32* %15, align 4
  ret i32 %174
}

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @getcomponent(i8*, i8*, i8**) #1

declare dso_local i8* @spa_name(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dsl_pool_config_held(%struct.TYPE_6__*) #1

declare dso_local i32 @dsl_dir_hold_obj(%struct.TYPE_6__*, i32, i8*, i8*, i32**) #1

declare dso_local i32 @dprintf(i8*, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @dsl_dir_phys(i32*) #1

declare dso_local i32 @zap_lookup(i32, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @dsl_dir_rele(i32*, i8*) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
