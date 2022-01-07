; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_get_mountpoint.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_dataset.c_dsl_get_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@ZAP_MAXVALUELEN = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPROP_SOURCE_VAL_RECVD = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_get_mountpoint(%struct.TYPE_8__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %11, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %23 = call i32 @zfs_prop_to_name(i32 %22)
  %24 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @dsl_prop_get_ds(%struct.TYPE_8__* %21, i32 %23, i32 1, i32 %24, i8* %25, i8* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %135

32:                                               ; preds = %4
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 47
  br i1 %37, label %38, label %134

38:                                               ; preds = %32
  %39 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %40 = load i32, i32* @KM_SLEEP, align 4
  %41 = call i8* @kmem_alloc(i32 %39, i32 %40)
  store i8* %41, i8** %12, align 8
  %42 = load i8*, i8** %12, align 8
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** @ZPROP_SOURCE_VAL_RECVD, align 8
  %45 = call i64 @strcmp(i8* %43, i8* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %69

48:                                               ; preds = %38
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = call i32 @strncmp(i8* %49, i8* %50, i32 %52)
  %54 = call i32 @ASSERT0(i32 %53)
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  store i8* %59, i8** %14, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 47
  br i1 %64, label %65, label %68

65:                                               ; preds = %48
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %14, align 8
  br label %68

68:                                               ; preds = %65, %48
  br label %69

69:                                               ; preds = %68, %47
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %75 = call i32 @spa_altroot(i32 %72, i8* %73, i32 %74)
  %76 = load i8*, i8** %13, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %13, align 8
  br label %82

82:                                               ; preds = %79, %69
  %83 = load i8*, i8** %8, align 8
  store i8* %83, i8** %15, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %82
  %90 = load i8*, i8** %13, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = load i8*, i8** %14, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95, %89
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  store i8* %103, i8** %15, align 8
  br label %104

104:                                              ; preds = %101, %95, %82
  %105 = load i8*, i8** %14, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i8*, i8** %8, align 8
  %112 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %113 = load i8*, i8** %13, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %111, i32 %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %113, i8* %114)
  br label %130

116:                                              ; preds = %104
  %117 = load i8*, i8** %8, align 8
  %118 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %119 = load i8*, i8** %13, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 64
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %128 = load i8*, i8** %14, align 8
  %129 = call i32 (i8*, i32, i8*, i8*, i8*, ...) @snprintf(i8* %117, i32 %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %119, i8* %120, i8* %127, i8* %128)
  br label %130

130:                                              ; preds = %116, %110
  %131 = load i8*, i8** %12, align 8
  %132 = load i32, i32* @ZAP_MAXVALUELEN, align 4
  %133 = call i32 @kmem_free(i8* %131, i32 %132)
  br label %134

134:                                              ; preds = %130, %32
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %30
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i32 @dsl_prop_get_ds(%struct.TYPE_8__*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @spa_altroot(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
