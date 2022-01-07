; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/jbd/extr_replay.c_journal_forget.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ext2/src/jbd/extr_replay.c_journal_forget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.buffer_head = type { i32 }
%struct.journal_head = type { %struct.TYPE_6__*, %struct.TYPE_6__*, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"inconsistent data on disk\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"belongs to current transaction: unfile\00", align 1
@BJ_Forget = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"belongs to older transaction\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_forget(%struct.TYPE_8__* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.journal_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %17 = call i32 @BUFFER_TRACE(%struct.buffer_head* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %19 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = call i32 @jbd_lock(i32* %21)
  %23 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %24 = call i32 @buffer_jbd(%struct.buffer_head* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %133

27:                                               ; preds = %2
  %28 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %29 = call %struct.journal_head* @bh2jh(%struct.buffer_head* %28)
  store %struct.journal_head* %29, %struct.journal_head** %7, align 8
  %30 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %31 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %32 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @J_EXPECT_JH(%struct.journal_head* %30, i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %133

42:                                               ; preds = %27
  %43 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %44 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %46 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = icmp eq %struct.TYPE_6__* %47, %50
  br i1 %51, label %52, label %98

52:                                               ; preds = %42
  %53 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %54 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %55 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @J_ASSERT_JH(%struct.journal_head* %53, i32 %59)
  %61 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %62 = call i32 @clear_buffer_dirty(%struct.buffer_head* %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %64 = call i32 @clear_buffer_jbddirty(%struct.buffer_head* %63)
  %65 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %66 = call i32 @JBUFFER_TRACE(%struct.journal_head* %65, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  %67 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %68 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %52
  %72 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %73 = call i32 @__journal_temp_unlink_buffer(%struct.journal_head* %72)
  %74 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = load i32, i32* @BJ_Forget, align 4
  %77 = call i32 @__journal_file_buffer(%struct.journal_head* %74, %struct.TYPE_6__* %75, i32 %76)
  br label %97

78:                                               ; preds = %52
  %79 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %80 = call i32 @__journal_unfile_buffer(%struct.journal_head* %79)
  %81 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %82 = call i32 @journal_remove_journal_head(%struct.buffer_head* %81)
  %83 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %84 = call i32 @__brelse(%struct.buffer_head* %83)
  %85 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %86 = call i32 @buffer_jbd(%struct.buffer_head* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %78
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = call i32 @jbd_unlock(i32* %90)
  %92 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %93 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %92)
  %94 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %95 = call i32 @__bforget(%struct.buffer_head* %94)
  br label %141

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96, %71
  br label %132

98:                                               ; preds = %42
  %99 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %100 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = icmp ne %struct.TYPE_6__* %101, null
  br i1 %102, label %103, label %131

103:                                              ; preds = %98
  %104 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %105 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %106 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %105, i32 0, i32 1
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = icmp eq %struct.TYPE_6__* %107, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @J_ASSERT_JH(%struct.journal_head* %104, i32 %112)
  %114 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %115 = call i32 @JBUFFER_TRACE(%struct.journal_head* %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %116 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %117 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = icmp ne %struct.TYPE_6__* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %103
  %121 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %122 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %121, i32 0, i32 0
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %125 = icmp eq %struct.TYPE_6__* %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @J_ASSERT(i32 %126)
  %128 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %129 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %128, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %129, align 8
  store i32 1, i32* %8, align 4
  br label %130

130:                                              ; preds = %120, %103
  br label %131

131:                                              ; preds = %130, %98
  br label %132

132:                                              ; preds = %131, %97
  br label %133

133:                                              ; preds = %132, %39, %26
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = call i32 @jbd_unlock(i32* %135)
  %137 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %138 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %137)
  %139 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %140 = call i32 @__brelse(%struct.buffer_head* %139)
  br label %141

141:                                              ; preds = %133, %88
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %144, %141
  %150 = load i32, i32* %9, align 4
  ret i32 %150
}

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @jbd_lock(i32*) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local %struct.journal_head* @bh2jh(%struct.buffer_head*) #1

declare dso_local i32 @J_EXPECT_JH(%struct.journal_head*, i32, i8*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @__journal_temp_unlink_buffer(%struct.journal_head*) #1

declare dso_local i32 @__journal_file_buffer(%struct.journal_head*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @__journal_unfile_buffer(%struct.journal_head*) #1

declare dso_local i32 @journal_remove_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

declare dso_local i32 @jbd_unlock(i32*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @__bforget(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
