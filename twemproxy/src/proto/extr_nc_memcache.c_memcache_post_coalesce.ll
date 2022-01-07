; ModuleID = '/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_memcache.c_memcache_post_coalesce.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/proto/extr_nc_memcache.c_memcache_post_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { %struct.TYPE_4__*, %struct.TYPE_3__**, i32, i64, i64, %struct.msg*, i64, %struct.msg* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.msg* }

@NC_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"END\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memcache_post_coalesce(%struct.msg* %0) #0 {
  %2 = alloca %struct.msg*, align 8
  %3 = alloca %struct.msg*, align 8
  %4 = alloca %struct.msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.msg* %0, %struct.msg** %2, align 8
  %7 = load %struct.msg*, %struct.msg** %2, align 8
  %8 = getelementptr inbounds %struct.msg, %struct.msg* %7, i32 0, i32 7
  %9 = load %struct.msg*, %struct.msg** %8, align 8
  store %struct.msg* %9, %struct.msg** %3, align 8
  %10 = load %struct.msg*, %struct.msg** %3, align 8
  %11 = getelementptr inbounds %struct.msg, %struct.msg* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.msg*, %struct.msg** %2, align 8
  %18 = getelementptr inbounds %struct.msg, %struct.msg* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.msg*, %struct.msg** %2, align 8
  %23 = getelementptr inbounds %struct.msg, %struct.msg* %22, i32 0, i32 5
  %24 = load %struct.msg*, %struct.msg** %23, align 8
  %25 = load %struct.msg*, %struct.msg** %2, align 8
  %26 = icmp eq %struct.msg* %24, %25
  br label %27

27:                                               ; preds = %21, %1
  %28 = phi i1 [ false, %1 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.msg*, %struct.msg** %2, align 8
  %32 = getelementptr inbounds %struct.msg, %struct.msg* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = load %struct.msg*, %struct.msg** %2, align 8
  %37 = getelementptr inbounds %struct.msg, %struct.msg* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35, %27
  %41 = load %struct.msg*, %struct.msg** %3, align 8
  %42 = getelementptr inbounds %struct.msg, %struct.msg* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %96

45:                                               ; preds = %35
  store i64 0, i64* %5, align 8
  br label %46

46:                                               ; preds = %82, %45
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.msg*, %struct.msg** %2, align 8
  %49 = getelementptr inbounds %struct.msg, %struct.msg* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @array_n(i32 %50)
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %46
  %54 = load %struct.msg*, %struct.msg** %2, align 8
  %55 = getelementptr inbounds %struct.msg, %struct.msg* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %56, i64 %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.msg*, %struct.msg** %60, align 8
  store %struct.msg* %61, %struct.msg** %4, align 8
  %62 = load %struct.msg*, %struct.msg** %4, align 8
  %63 = icmp eq %struct.msg* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load %struct.msg*, %struct.msg** %3, align 8
  %66 = getelementptr inbounds %struct.msg, %struct.msg* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  br label %96

69:                                               ; preds = %53
  %70 = load %struct.msg*, %struct.msg** %3, align 8
  %71 = load %struct.msg*, %struct.msg** %4, align 8
  %72 = call i64 @memcache_copy_bulk(%struct.msg* %70, %struct.msg* %71)
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @NC_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.msg*, %struct.msg** %3, align 8
  %78 = getelementptr inbounds %struct.msg, %struct.msg* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  br label %96

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %5, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %5, align 8
  br label %46

85:                                               ; preds = %46
  %86 = load %struct.msg*, %struct.msg** %3, align 8
  %87 = call i64 @msg_append(%struct.msg* %86, i32* bitcast ([6 x i8]* @.str to i32*), i32 5)
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @NC_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.msg*, %struct.msg** %3, align 8
  %93 = getelementptr inbounds %struct.msg, %struct.msg* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %40, %64, %76, %91, %85
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @array_n(i32) #1

declare dso_local i64 @memcache_copy_bulk(%struct.msg*, %struct.msg*) #1

declare dso_local i64 @msg_append(%struct.msg*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
