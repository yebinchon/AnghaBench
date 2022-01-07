; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_file_data.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_file_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.File_Transfers* }
%struct.File_Transfers = type { i64, i64, i64, i64, i32, i64 }

@FRIEND_ONLINE = common dso_local global i64 0, align 8
@MAX_CONCURRENT_FILE_PIPES = common dso_local global i64 0, align 8
@FILESTATUS_TRANSFERRING = common dso_local global i64 0, align 8
@MAX_FILE_DATA_SIZE = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i64 0, align 8
@MIN_SLOTS_FREE = common dso_local global i64 0, align 8
@FILESTATUS_FINISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_data(%struct.TYPE_7__* %0, i64 %1, i64 %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.File_Transfers*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i64 @friend_not_valid(%struct.TYPE_7__* %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %172

21:                                               ; preds = %6
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FRIEND_ONLINE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 -2, i32* %7, align 4
  br label %172

32:                                               ; preds = %21
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @MAX_CONCURRENT_FILE_PIPES, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -3, i32* %7, align 4
  br label %172

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load %struct.File_Transfers*, %struct.File_Transfers** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %44, i64 %45
  store %struct.File_Transfers* %46, %struct.File_Transfers** %14, align 8
  %47 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %48 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FILESTATUS_TRANSFERRING, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  store i32 -4, i32* %7, align 4
  br label %172

53:                                               ; preds = %37
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* @MAX_FILE_DATA_SIZE, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -5, i32* %7, align 4
  br label %172

58:                                               ; preds = %53
  %59 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %60 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %63 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = load i64, i64* %13, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store i32 -5, i32* %7, align 4
  br label %172

69:                                               ; preds = %58
  %70 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %71 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @UINT64_MAX, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @MAX_FILE_DATA_SIZE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %81 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %13, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %86 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store i32 -5, i32* %7, align 4
  br label %172

90:                                               ; preds = %79, %75, %69
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %93 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %107, label %96

96:                                               ; preds = %90
  %97 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %98 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp sle i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %104 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %90
  store i32 -7, i32* %7, align 4
  br label %172

108:                                              ; preds = %102, %96
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @friend_connection_crypt_connection_id(i32 %114, i32 %121)
  %123 = call i64 @crypto_num_free_sendqueue_slots(i32 %111, i32 %122)
  %124 = load i64, i64* @MIN_SLOTS_FREE, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %108
  store i32 -6, i32* %7, align 4
  br label %172

127:                                              ; preds = %108
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* %10, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @send_file_data_packet(%struct.TYPE_7__* %128, i64 %129, i64 %130, i32* %131, i64 %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, -1
  br i1 %135, label %136, label %171

136:                                              ; preds = %127
  %137 = load i64, i64* %13, align 8
  %138 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %139 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, %137
  store i64 %141, i64* %139, align 8
  %142 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %143 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %136
  %147 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %148 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, -1
  store i64 %150, i64* %148, align 8
  br label %151

151:                                              ; preds = %146, %136
  %152 = load i64, i64* %13, align 8
  %153 = load i64, i64* @MAX_FILE_DATA_SIZE, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %163, label %155

155:                                              ; preds = %151
  %156 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %157 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %160 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %158, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %155, %151
  %164 = load i64, i64* @FILESTATUS_FINISHED, align 8
  %165 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %166 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load i32, i32* %15, align 4
  %168 = load %struct.File_Transfers*, %struct.File_Transfers** %14, align 8
  %169 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %163, %155
  store i32 0, i32* %7, align 4
  br label %172

171:                                              ; preds = %127
  store i32 -6, i32* %7, align 4
  br label %172

172:                                              ; preds = %171, %170, %126, %107, %89, %68, %57, %52, %36, %31, %20
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local i64 @friend_not_valid(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @crypto_num_free_sendqueue_slots(i32, i32) #1

declare dso_local i32 @friend_connection_crypt_connection_id(i32, i32) #1

declare dso_local i32 @send_file_data_packet(%struct.TYPE_7__*, i64, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
