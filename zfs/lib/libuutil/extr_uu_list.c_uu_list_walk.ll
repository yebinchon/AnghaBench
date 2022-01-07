; ModuleID = '/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_list.c_uu_list_walk.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_list.c_uu_list_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }

@UU_WALK_NEXT = common dso_local global i32 0, align 4
@UU_WALK_ROBUST = common dso_local global i32 0, align 4
@UU_WALK_REVERSE = common dso_local global i32 0, align 4
@UU_ERROR_UNKNOWN_FLAG = common dso_local global i32 0, align 4
@UU_ERROR_CALLBACK_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uu_list_walk(%struct.TYPE_7__* %0, i32 (i8*, i8*)** %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32 (i8*, i8*)**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 (i8*, i8*)** %1, i32 (i8*, i8*)*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @UU_WALK_NEXT, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @UU_WALK_ROBUST, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @UU_WALK_REVERSE, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @UU_WALK_ROBUST, align 4
  %25 = load i32, i32* @UU_WALK_REVERSE, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %23, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @UU_ERROR_UNKNOWN_FLAG, align 4
  %32 = call i32 @uu_set_error(i32 %31)
  store i32 -1, i32* %5, align 4
  br label %131

33:                                               ; preds = %4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %38, %33
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @list_walk_init(i32* %14, %struct.TYPE_7__* %42, i32 %43)
  br label %45

45:                                               ; preds = %54, %41
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @UU_WALK_NEXT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = call i8* @uu_list_walk_next(i32* %14)
  store i8* %50, i8** %15, align 8
  %51 = icmp ne i8* %50, null
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i1 [ false, %45 ], [ %51, %49 ]
  br i1 %53, label %54, label %60

54:                                               ; preds = %52
  %55 = load i32 (i8*, i8*)**, i32 (i8*, i8*)*** %7, align 8
  %56 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %55, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 %56(i8* %57, i8* %58)
  store i32 %59, i32* %11, align 4
  br label %45

60:                                               ; preds = %52
  %61 = call i32 @list_walk_fini(i32* %14)
  br label %124

62:                                               ; preds = %38
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %94, label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %10, align 8
  br label %70

70:                                               ; preds = %89, %65
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @UU_WALK_NEXT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = icmp ne %struct.TYPE_8__* %75, %77
  br label %79

79:                                               ; preds = %74, %70
  %80 = phi i1 [ false, %70 ], [ %78, %74 ]
  br i1 %80, label %81, label %93

81:                                               ; preds = %79
  %82 = load i32 (i8*, i8*)**, i32 (i8*, i8*)*** %7, align 8
  %83 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %86 = call i8* @NODE_TO_ELEM(%struct.TYPE_7__* %84, %struct.TYPE_8__* %85)
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 %83(i8* %86, i8* %87)
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %81
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %10, align 8
  br label %70

93:                                               ; preds = %79
  br label %123

94:                                               ; preds = %62
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %10, align 8
  br label %99

99:                                               ; preds = %118, %94
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @UU_WALK_NEXT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = icmp ne %struct.TYPE_8__* %104, %106
  br label %108

108:                                              ; preds = %103, %99
  %109 = phi i1 [ false, %99 ], [ %107, %103 ]
  br i1 %109, label %110, label %122

110:                                              ; preds = %108
  %111 = load i32 (i8*, i8*)**, i32 (i8*, i8*)*** %7, align 8
  %112 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %111, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %115 = call i8* @NODE_TO_ELEM(%struct.TYPE_7__* %113, %struct.TYPE_8__* %114)
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 %112(i8* %115, i8* %116)
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %110
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %10, align 8
  br label %99

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %122, %93
  br label %124

124:                                              ; preds = %123, %60
  %125 = load i32, i32* %11, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 0, i32* %5, align 4
  br label %131

128:                                              ; preds = %124
  %129 = load i32, i32* @UU_ERROR_CALLBACK_FAILED, align 4
  %130 = call i32 @uu_set_error(i32 %129)
  store i32 -1, i32* %5, align 4
  br label %131

131:                                              ; preds = %128, %127, %30
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @uu_set_error(i32) #1

declare dso_local i32 @list_walk_init(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i8* @uu_list_walk_next(i32*) #1

declare dso_local i32 @list_walk_fini(i32*) #1

declare dso_local i8* @NODE_TO_ELEM(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
