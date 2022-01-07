; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_print_uge_deleg_perms.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_print_uge_deleg_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8*, i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32 }

@B_TRUE = common dso_local global i64 0, align 8
@UU_WALK_ROBUST = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"everyone\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\09%s %s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, i8*)* @print_uge_deleg_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_uge_deleg_perms(i32* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %9, align 8
  %20 = load i64, i64* @B_TRUE, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @UU_WALK_ROBUST, align 4
  %23 = call i32* @uu_avl_walk_start(i32* %21, i32 %22)
  store i32* %23, i32** %11, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = call i32 (...) @nomem()
  br label %27

27:                                               ; preds = %25, %4
  br label %28

28:                                               ; preds = %132, %27
  %29 = load i32*, i32** %11, align 8
  %30 = call %struct.TYPE_11__* @uu_avl_walk_next(i32* %29)
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %9, align 8
  %31 = icmp ne %struct.TYPE_11__* %30, null
  br i1 %31, label %32, label %133

32:                                               ; preds = %28
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %12, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %13, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %14, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %15, align 4
  store i8 32, i8* %16, align 1
  %49 = load i64, i64* @B_TRUE, align 8
  store i64 %49, i64* %18, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = call %struct.TYPE_12__* @uu_avl_first(i32* %50)
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %17, align 8
  br label %52

52:                                               ; preds = %123, %32
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %54 = icmp ne %struct.TYPE_12__* %53, null
  br i1 %54, label %55, label %127

55:                                               ; preds = %52
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %63, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62, %55
  br label %123

70:                                               ; preds = %62
  %71 = load i64, i64* %18, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %115

73:                                               ; preds = %70
  store i8* null, i8** %19, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i64, i64* @B_FALSE, align 8
  store i64 %77, i64* %10, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %78)
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %15, align 4
  switch i32 %81, label %98 [
    i32 128, label %82
    i32 129, label %82
    i32 130, label %89
    i32 131, label %89
    i32 132, label %96
    i32 133, label %96
  ]

82:                                               ; preds = %80, %80
  %83 = call i8* @gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %83, i8** %19, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i8*, i8** %13, align 8
  store i8* %87, i8** %12, align 8
  br label %88

88:                                               ; preds = %86, %82
  br label %103

89:                                               ; preds = %80, %80
  %90 = call i8* @gettext(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %90, i8** %19, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i8*, i8** %13, align 8
  store i8* %94, i8** %12, align 8
  br label %95

95:                                               ; preds = %93, %89
  br label %103

96:                                               ; preds = %80, %80
  %97 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i8* %97, i8** %19, align 8
  store i8* null, i8** %12, align 8
  br label %103

98:                                               ; preds = %80
  %99 = load i8*, i8** %19, align 8
  %100 = icmp ne i8* %99, null
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  br label %103

103:                                              ; preds = %98, %96, %95, %88
  %104 = load i64, i64* @B_FALSE, align 8
  store i64 %104, i64* %18, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i8*, i8** %19, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %108)
  br label %114

110:                                              ; preds = %103
  %111 = load i8*, i8** %19, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %111, i8* %112)
  br label %114

114:                                              ; preds = %110, %107
  br label %115

115:                                              ; preds = %114, %70
  %116 = load i8, i8* %16, align 1
  %117 = sext i8 %116 to i32
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %117, i32 %121)
  store i8 44, i8* %16, align 1
  br label %123

123:                                              ; preds = %115, %69
  %124 = load i32*, i32** %14, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %126 = call %struct.TYPE_12__* @uu_avl_next(i32* %124, %struct.TYPE_12__* %125)
  store %struct.TYPE_12__* %126, %struct.TYPE_12__** %17, align 8
  br label %52

127:                                              ; preds = %52
  %128 = load i64, i64* %18, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %127
  br label %28

133:                                              ; preds = %28
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @uu_avl_walk_end(i32* %134)
  ret void
}

declare dso_local i32* @uu_avl_walk_start(i32*, i32) #1

declare dso_local i32 @nomem(...) #1

declare dso_local %struct.TYPE_11__* @uu_avl_walk_next(i32*) #1

declare dso_local %struct.TYPE_12__* @uu_avl_first(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_12__* @uu_avl_next(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @uu_avl_walk_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
