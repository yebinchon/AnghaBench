; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_dispatch_name_queue.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_dispatch_name_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.harbor = type { i32, %struct.slave*, %struct.skynet_context* }
%struct.slave = type { i32, i64, %struct.harbor_msg_queue* }
%struct.harbor_msg_queue = type { i32 }
%struct.skynet_context = type { i32 }
%struct.keyvalue = type { i32, %struct.harbor_msg_queue*, i32 }
%struct.harbor_msg = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HANDLE_REMOTE_SHIFT = common dso_local global i32 0, align 4
@STATUS_DOWN = common dso_local global i64 0, align 8
@GLOBALNAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Drop message to %s (in harbor %d)\00", align 1
@PTYPE_TAG_DONTCOPY = common dso_local global i32 0, align 4
@HANDLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.harbor*, %struct.keyvalue*)* @dispatch_name_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_name_queue(%struct.harbor* %0, %struct.keyvalue* %1) #0 {
  %3 = alloca %struct.harbor*, align 8
  %4 = alloca %struct.keyvalue*, align 8
  %5 = alloca %struct.harbor_msg_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.skynet_context*, align 8
  %9 = alloca %struct.slave*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.harbor_msg*, align 8
  %14 = alloca %struct.harbor_msg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.harbor_msg*, align 8
  store %struct.harbor* %0, %struct.harbor** %3, align 8
  store %struct.keyvalue* %1, %struct.keyvalue** %4, align 8
  %17 = load %struct.keyvalue*, %struct.keyvalue** %4, align 8
  %18 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %17, i32 0, i32 1
  %19 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %18, align 8
  store %struct.harbor_msg_queue* %19, %struct.harbor_msg_queue** %5, align 8
  %20 = load %struct.keyvalue*, %struct.keyvalue** %4, align 8
  %21 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @HANDLE_REMOTE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.harbor*, %struct.harbor** %3, align 8
  %27 = getelementptr inbounds %struct.harbor, %struct.harbor* %26, i32 0, i32 2
  %28 = load %struct.skynet_context*, %struct.skynet_context** %27, align 8
  store %struct.skynet_context* %28, %struct.skynet_context** %8, align 8
  %29 = load %struct.harbor*, %struct.harbor** %3, align 8
  %30 = getelementptr inbounds %struct.harbor, %struct.harbor* %29, i32 0, i32 1
  %31 = load %struct.slave*, %struct.slave** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.slave, %struct.slave* %31, i64 %33
  store %struct.slave* %34, %struct.slave** %9, align 8
  %35 = load %struct.slave*, %struct.slave** %9, align 8
  %36 = getelementptr inbounds %struct.slave, %struct.slave* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %140

40:                                               ; preds = %2
  %41 = load %struct.slave*, %struct.slave** %9, align 8
  %42 = getelementptr inbounds %struct.slave, %struct.slave* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @STATUS_DOWN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load i32, i32* @GLOBALNAME_LENGTH, align 4
  %48 = add nsw i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %11, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %12, align 8
  %52 = load %struct.keyvalue*, %struct.keyvalue** %4, align 8
  %53 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @GLOBALNAME_LENGTH, align 4
  %56 = call i32 @memcpy(i8* %51, i32 %54, i32 %55)
  %57 = load i32, i32* @GLOBALNAME_LENGTH, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %51, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load %struct.skynet_context*, %struct.skynet_context** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @skynet_error(%struct.skynet_context* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %61)
  %63 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %63)
  br label %139

64:                                               ; preds = %40
  %65 = load %struct.slave*, %struct.slave** %9, align 8
  %66 = getelementptr inbounds %struct.slave, %struct.slave* %65, i32 0, i32 2
  %67 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %66, align 8
  %68 = icmp eq %struct.harbor_msg_queue* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.keyvalue*, %struct.keyvalue** %4, align 8
  %71 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %70, i32 0, i32 1
  %72 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %71, align 8
  %73 = load %struct.slave*, %struct.slave** %9, align 8
  %74 = getelementptr inbounds %struct.slave, %struct.slave* %73, i32 0, i32 2
  store %struct.harbor_msg_queue* %72, %struct.harbor_msg_queue** %74, align 8
  %75 = load %struct.keyvalue*, %struct.keyvalue** %4, align 8
  %76 = getelementptr inbounds %struct.keyvalue, %struct.keyvalue* %75, i32 0, i32 1
  store %struct.harbor_msg_queue* null, %struct.harbor_msg_queue** %76, align 8
  br label %89

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %82, %77
  %79 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %5, align 8
  %80 = call %struct.harbor_msg* @pop_queue(%struct.harbor_msg_queue* %79)
  store %struct.harbor_msg* %80, %struct.harbor_msg** %13, align 8
  %81 = icmp ne %struct.harbor_msg* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.slave*, %struct.slave** %9, align 8
  %84 = getelementptr inbounds %struct.slave, %struct.slave* %83, i32 0, i32 2
  %85 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %84, align 8
  %86 = load %struct.harbor_msg*, %struct.harbor_msg** %13, align 8
  %87 = call i32 @push_queue_msg(%struct.harbor_msg_queue* %85, %struct.harbor_msg* %86)
  br label %78

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %69
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.harbor*, %struct.harbor** %3, align 8
  %92 = getelementptr inbounds %struct.harbor, %struct.harbor* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @HANDLE_REMOTE_SHIFT, align 4
  %95 = ashr i32 %93, %94
  %96 = icmp eq i32 %90, %95
  br i1 %96, label %97, label %138

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %104, %97
  %99 = load %struct.slave*, %struct.slave** %9, align 8
  %100 = getelementptr inbounds %struct.slave, %struct.slave* %99, i32 0, i32 2
  %101 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %100, align 8
  %102 = call %struct.harbor_msg* @pop_queue(%struct.harbor_msg_queue* %101)
  store %struct.harbor_msg* %102, %struct.harbor_msg** %14, align 8
  %103 = icmp ne %struct.harbor_msg* %102, null
  br i1 %103, label %104, label %131

104:                                              ; preds = %98
  %105 = load %struct.harbor_msg*, %struct.harbor_msg** %14, align 8
  %106 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @HANDLE_REMOTE_SHIFT, align 4
  %110 = ashr i32 %108, %109
  store i32 %110, i32* %15, align 4
  %111 = load %struct.skynet_context*, %struct.skynet_context** %8, align 8
  %112 = load %struct.harbor_msg*, %struct.harbor_msg** %14, align 8
  %113 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @PTYPE_TAG_DONTCOPY, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.harbor_msg*, %struct.harbor_msg** %14, align 8
  %121 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.harbor_msg*, %struct.harbor_msg** %14, align 8
  %125 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.harbor_msg*, %struct.harbor_msg** %14, align 8
  %128 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @skynet_send(%struct.skynet_context* %111, i32 %115, i32 %116, i32 %119, i32 %123, i32 %126, i32 %129)
  br label %98

131:                                              ; preds = %98
  %132 = load %struct.slave*, %struct.slave** %9, align 8
  %133 = getelementptr inbounds %struct.slave, %struct.slave* %132, i32 0, i32 2
  %134 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %133, align 8
  %135 = call i32 @release_queue(%struct.harbor_msg_queue* %134)
  %136 = load %struct.slave*, %struct.slave** %9, align 8
  %137 = getelementptr inbounds %struct.slave, %struct.slave* %136, i32 0, i32 2
  store %struct.harbor_msg_queue* null, %struct.harbor_msg_queue** %137, align 8
  br label %138

138:                                              ; preds = %131, %89
  br label %139

139:                                              ; preds = %138, %46
  br label %169

140:                                              ; preds = %2
  br label %141

141:                                              ; preds = %145, %140
  %142 = load %struct.harbor_msg_queue*, %struct.harbor_msg_queue** %5, align 8
  %143 = call %struct.harbor_msg* @pop_queue(%struct.harbor_msg_queue* %142)
  store %struct.harbor_msg* %143, %struct.harbor_msg** %16, align 8
  %144 = icmp ne %struct.harbor_msg* %143, null
  br i1 %144, label %145, label %169

145:                                              ; preds = %141
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @HANDLE_MASK, align 4
  %148 = and i32 %146, %147
  %149 = load %struct.harbor_msg*, %struct.harbor_msg** %16, align 8
  %150 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %148
  store i32 %153, i32* %151, align 4
  %154 = load %struct.skynet_context*, %struct.skynet_context** %8, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.harbor_msg*, %struct.harbor_msg** %16, align 8
  %157 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.harbor_msg*, %struct.harbor_msg** %16, align 8
  %160 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.harbor_msg*, %struct.harbor_msg** %16, align 8
  %163 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %162, i32 0, i32 1
  %164 = call i32 @send_remote(%struct.skynet_context* %154, i32 %155, i32 %158, i32 %161, %struct.TYPE_2__* %163)
  %165 = load %struct.harbor_msg*, %struct.harbor_msg** %16, align 8
  %166 = getelementptr inbounds %struct.harbor_msg, %struct.harbor_msg* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @skynet_free(i32 %167)
  br label %141

169:                                              ; preds = %139, %141
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local %struct.harbor_msg* @pop_queue(%struct.harbor_msg_queue*) #2

declare dso_local i32 @push_queue_msg(%struct.harbor_msg_queue*, %struct.harbor_msg*) #2

declare dso_local i32 @skynet_send(%struct.skynet_context*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @release_queue(%struct.harbor_msg_queue*) #2

declare dso_local i32 @send_remote(%struct.skynet_context*, i32, i32, i32, %struct.TYPE_2__*) #2

declare dso_local i32 @skynet_free(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
