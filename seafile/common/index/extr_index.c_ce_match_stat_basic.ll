; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_ce_match_stat_basic.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_ce_match_stat_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i64, i64, i64, i64, i64 }

@CE_REMOVE = common dso_local global i32 0, align 4
@MODE_CHANGED = common dso_local global i32 0, align 4
@DATA_CHANGED = common dso_local global i32 0, align 4
@TYPE_CHANGED = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"internal error: ce_mode is %o\0A\00", align 1
@MTIME_CHANGED = common dso_local global i32 0, align 4
@INODE_CHANGED = common dso_local global i32 0, align 4
@OWNER_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry*, %struct.TYPE_5__*)* @ce_match_stat_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ce_match_stat_basic(%struct.cache_entry* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %8 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CE_REMOVE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @MODE_CHANGED, align 4
  %15 = load i32, i32* @DATA_CHANGED, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @TYPE_CHANGED, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %113

19:                                               ; preds = %2
  %20 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %21 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @S_IFMT, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %75 [
    i32 128, label %25
    i32 129, label %52
    i32 130, label %63
  ]

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @S_ISREG(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @TYPE_CHANGED, align 4
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %39 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = xor i32 %40, %43
  %45 = and i32 64, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load i32, i32* @MODE_CHANGED, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %34
  br label %80

52:                                               ; preds = %19
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @S_ISLNK(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @TYPE_CHANGED, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %52
  br label %80

63:                                               ; preds = %19
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @S_ISDIR(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* @TYPE_CHANGED, align 4
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %113

75:                                               ; preds = %19
  %76 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %77 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @seaf_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %78)
  store i32 -1, i32* %3, align 4
  br label %113

80:                                               ; preds = %62, %51
  %81 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %82 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @is_eml_file(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %80
  %87 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %88 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load i32, i32* @MTIME_CHANGED, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %86, %80
  %100 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %101 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* @DATA_CHANGED, align 4
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %107, %99
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %75, %73, %13
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local i32 @is_eml_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
