; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/jbd/extr_replay.c___journal_file_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/jbd/extr_replay.c___journal_file_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.journal_head*, %struct.journal_head*, %struct.journal_head*, %struct.journal_head*, %struct.journal_head*, %struct.journal_head*, %struct.journal_head*, i32, %struct.journal_head*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i32 }

@BJ_Types = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__journal_file_buffer(%struct.journal_head* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca %struct.journal_head*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.journal_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  store %struct.journal_head* %0, %struct.journal_head** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.journal_head** null, %struct.journal_head*** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %11 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %10)
  store %struct.buffer_head* %11, %struct.buffer_head** %9, align 8
  %12 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %14 = call i32 @jbd_is_locked_bh_state(%struct.buffer_head* %13)
  %15 = call i32 @J_ASSERT_JH(%struct.journal_head* %12, i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 9
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @assert_jbd_locked(i32* %19)
  %21 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %22 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %23 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BJ_Types, align 4
  %26 = icmp ult i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @J_ASSERT_JH(%struct.journal_head* %21, i32 %27)
  %29 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %30 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %31 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %30, i32 0, i32 3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = icmp eq %struct.TYPE_5__* %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %3
  %36 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %37 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp eq %struct.TYPE_5__* %38, null
  br label %40

40:                                               ; preds = %35, %3
  %41 = phi i1 [ true, %3 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @J_ASSERT_JH(%struct.journal_head* %29, i32 %42)
  %44 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %45 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %50 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %147

55:                                               ; preds = %48, %40
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 132
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 130
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 129
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 136
  br i1 %66, label %67, label %77

67:                                               ; preds = %64, %61, %58, %55
  %68 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %69 = call i64 @test_clear_buffer_dirty(%struct.buffer_head* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %73 = call i64 @test_clear_buffer_jbddirty(%struct.buffer_head* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %67
  store i32 1, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %71
  br label %77

77:                                               ; preds = %76, %64
  %78 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %79 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %78, i32 0, i32 3
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = icmp ne %struct.TYPE_5__* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %84 = call i32 @__journal_temp_unlink_buffer(%struct.journal_head* %83)
  br label %85

85:                                               ; preds = %82, %77
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %88 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %87, i32 0, i32 3
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %88, align 8
  %89 = load i32, i32* %6, align 4
  switch i32 %89, label %135 [
    i32 131, label %90
    i32 128, label %107
    i32 132, label %110
    i32 136, label %117
    i32 135, label %120
    i32 129, label %123
    i32 133, label %126
    i32 130, label %129
    i32 134, label %132
  ]

90:                                               ; preds = %85
  %91 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %92 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %93 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @J_ASSERT_JH(%struct.journal_head* %91, i32 %97)
  %99 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %100 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %101 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @J_ASSERT_JH(%struct.journal_head* %99, i32 %105)
  br label %147

107:                                              ; preds = %85
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 8
  store %struct.journal_head** %109, %struct.journal_head*** %7, align 8
  br label %135

110:                                              ; preds = %85
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 6
  store %struct.journal_head** %116, %struct.journal_head*** %7, align 8
  br label %135

117:                                              ; preds = %85
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 5
  store %struct.journal_head** %119, %struct.journal_head*** %7, align 8
  br label %135

120:                                              ; preds = %85
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 4
  store %struct.journal_head** %122, %struct.journal_head*** %7, align 8
  br label %135

123:                                              ; preds = %85
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  store %struct.journal_head** %125, %struct.journal_head*** %7, align 8
  br label %135

126:                                              ; preds = %85
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  store %struct.journal_head** %128, %struct.journal_head*** %7, align 8
  br label %135

129:                                              ; preds = %85
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  store %struct.journal_head** %131, %struct.journal_head*** %7, align 8
  br label %135

132:                                              ; preds = %85
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store %struct.journal_head** %134, %struct.journal_head*** %7, align 8
  br label %135

135:                                              ; preds = %85, %132, %129, %126, %123, %120, %117, %110, %107
  %136 = load %struct.journal_head**, %struct.journal_head*** %7, align 8
  %137 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %138 = call i32 @__blist_add_buffer(%struct.journal_head** %136, %struct.journal_head* %137)
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %141 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %135
  %145 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %146 = call i32 @set_buffer_jbddirty(%struct.buffer_head* %145)
  br label %147

147:                                              ; preds = %54, %90, %144, %135
  ret void
}

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @jbd_is_locked_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @assert_jbd_locked(i32*) #1

declare dso_local i64 @test_clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i64 @test_clear_buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @__journal_temp_unlink_buffer(%struct.journal_head*) #1

declare dso_local i32 @__blist_add_buffer(%struct.journal_head**, %struct.journal_head*) #1

declare dso_local i32 @set_buffer_jbddirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
