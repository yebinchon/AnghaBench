; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_set_volsize.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zvol.c_zvol_set_volsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 (%struct.TYPE_9__*, i64)* }
%struct.TYPE_9__ = type { i32, i32, i32, i32*, i64 }
%struct.TYPE_10__ = type { i32 }

@B_FALSE = common dso_local global i64 0, align 8
@ZFS_PROP_READONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@DMU_OST_ZVOL = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZVOL_OBJ = common dso_local global i32 0, align 4
@ops = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zvol_set_volsize(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* null, i32** %6, align 8
  %12 = load i64, i64* @B_FALSE, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @ZFS_PROP_READONLY, align 4
  %15 = call i32 @zfs_prop_to_name(i32 %14)
  %16 = call i32 @dsl_prop_get_integer(i8* %13, i32 %15, i64* %7, i32* null)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @SET_ERROR(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %170

22:                                               ; preds = %2
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EROFS, align 4
  %27 = call i32 @SET_ERROR(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %170

28:                                               ; preds = %22
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @RW_READER, align 4
  %31 = call %struct.TYPE_9__* @zvol_find_by_name(i8* %29, i32 %30)
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %10, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = icmp eq %struct.TYPE_9__* %32, null
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = call i64 @MUTEX_HELD(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = call i64 @RW_READ_HELD(i32* %41)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i1 [ false, %34 ], [ %43, %39 ]
  br label %46

46:                                               ; preds = %44, %28
  %47 = phi i1 [ true, %28 ], [ %45, %44 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = icmp eq %struct.TYPE_9__* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %91

57:                                               ; preds = %52, %46
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %59 = icmp ne %struct.TYPE_9__* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = call i32 @rw_exit(i32* %62)
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* @DMU_OST_ZVOL, align 4
  %67 = load i64, i64* @B_FALSE, align 8
  %68 = load i64, i64* @B_TRUE, align 8
  %69 = load i32, i32* @FTAG, align 4
  %70 = call i32 @dmu_objset_own(i8* %65, i32 %66, i64 %67, i64 %68, i32 %69, i32** %6)
  store i32 %70, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %64
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = icmp ne %struct.TYPE_9__* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = call i32 @mutex_exit(i32* %77)
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @SET_ERROR(i32 %80)
  store i32 %81, i32* %3, align 4
  br label %170

82:                                               ; preds = %64
  %83 = load i64, i64* @B_TRUE, align 8
  store i64 %83, i64* %9, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %85 = icmp ne %struct.TYPE_9__* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  store i32* %87, i32** %89, align 8
  br label %90

90:                                               ; preds = %86, %82
  br label %95

91:                                               ; preds = %52
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %6, align 8
  br label %95

95:                                               ; preds = %91, %90
  %96 = load i32, i32* @KM_SLEEP, align 4
  %97 = call %struct.TYPE_10__* @kmem_alloc(i32 4, i32 %96)
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %11, align 8
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* @ZVOL_OBJ, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %101 = call i32 @dmu_object_info(i32* %98, i32 %99, %struct.TYPE_10__* %100)
  store i32 %101, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %95
  %104 = load i64, i64* %5, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @zvol_check_volsize(i64 %104, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103, %95
  br label %127

111:                                              ; preds = %103
  %112 = load i64, i64* %5, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @zvol_update_volsize(i64 %112, i32* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %119 = icmp ne %struct.TYPE_9__* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load i64, i64* %5, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 4
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %120, %117, %111
  br label %127

127:                                              ; preds = %126, %110
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %129 = call i32 @kmem_free(%struct.TYPE_10__* %128, i32 4)
  %130 = load i64, i64* %9, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %127
  %133 = load i32*, i32** %6, align 8
  %134 = load i64, i64* @B_TRUE, align 8
  %135 = load i32, i32* @FTAG, align 4
  %136 = call i32 @dmu_objset_disown(i32* %133, i64 %134, i32 %135)
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %138 = icmp ne %struct.TYPE_9__* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 3
  store i32* null, i32** %141, align 8
  br label %142

142:                                              ; preds = %139, %132
  br label %147

143:                                              ; preds = %127
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 2
  %146 = call i32 @rw_exit(i32* %145)
  br label %147

147:                                              ; preds = %143, %142
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %149 = icmp ne %struct.TYPE_9__* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = call i32 @mutex_exit(i32* %152)
  br label %154

154:                                              ; preds = %150, %147
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %159 = icmp ne %struct.TYPE_9__* %158, null
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ops, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32 (%struct.TYPE_9__*, i64)*, i32 (%struct.TYPE_9__*, i64)** %162, align 8
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %165 = load i64, i64* %5, align 8
  %166 = call i32 %163(%struct.TYPE_9__* %164, i64 %165)
  br label %167

167:                                              ; preds = %160, %157, %154
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @SET_ERROR(i32 %168)
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %167, %79, %25, %19
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @dsl_prop_get_integer(i8*, i32, i64*, i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.TYPE_9__* @zvol_find_by_name(i8*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @MUTEX_HELD(i32*) #1

declare dso_local i64 @RW_READ_HELD(i32*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @dmu_objset_own(i8*, i32, i64, i64, i32, i32**) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local %struct.TYPE_10__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @dmu_object_info(i32*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @zvol_check_volsize(i64, i32) #1

declare dso_local i32 @zvol_update_volsize(i64, i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @dmu_objset_disown(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
