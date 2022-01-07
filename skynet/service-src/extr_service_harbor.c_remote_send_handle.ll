; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_remote_send_handle.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_remote_send_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.harbor = type { i32, %struct.slave*, %struct.skynet_context* }
%struct.slave = type { i64, i64, i32* }
%struct.skynet_context = type { i32 }
%struct.remote_message_header = type { i32, i32, i32 }

@HANDLE_REMOTE_SHIFT = common dso_local global i32 0, align 4
@PTYPE_TAG_DONTCOPY = common dso_local global i32 0, align 4
@STATUS_HANDSHAKE = common dso_local global i64 0, align 8
@STATUS_DOWN = common dso_local global i64 0, align 8
@PTYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Drop message to harbor %d from %x to %x (session = %d, msgsz = %d)\00", align 1
@HANDLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.harbor*, i32, i32, i32, i32, i8*, i64)* @remote_send_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_send_handle(%struct.harbor* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.harbor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.skynet_context*, align 8
  %18 = alloca %struct.slave*, align 8
  %19 = alloca %struct.remote_message_header, align 4
  %20 = alloca %struct.remote_message_header, align 4
  store %struct.harbor* %0, %struct.harbor** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @HANDLE_REMOTE_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %16, align 4
  %24 = load %struct.harbor*, %struct.harbor** %9, align 8
  %25 = getelementptr inbounds %struct.harbor, %struct.harbor* %24, i32 0, i32 2
  %26 = load %struct.skynet_context*, %struct.skynet_context** %25, align 8
  store %struct.skynet_context* %26, %struct.skynet_context** %17, align 8
  %27 = load i32, i32* %16, align 4
  %28 = load %struct.harbor*, %struct.harbor** %9, align 8
  %29 = getelementptr inbounds %struct.harbor, %struct.harbor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %7
  %33 = load %struct.skynet_context*, %struct.skynet_context** %17, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @PTYPE_TAG_DONTCOPY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %13, align 4
  %40 = load i8*, i8** %14, align 8
  %41 = load i64, i64* %15, align 8
  %42 = call i32 @skynet_send(%struct.skynet_context* %33, i32 %34, i32 %35, i32 %38, i32 %39, i8* %40, i64 %41)
  store i32 1, i32* %8, align 4
  br label %130

43:                                               ; preds = %7
  %44 = load %struct.harbor*, %struct.harbor** %9, align 8
  %45 = getelementptr inbounds %struct.harbor, %struct.harbor* %44, i32 0, i32 1
  %46 = load %struct.slave*, %struct.slave** %45, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.slave, %struct.slave* %46, i64 %48
  store %struct.slave* %49, %struct.slave** %18, align 8
  %50 = load %struct.slave*, %struct.slave** %18, align 8
  %51 = getelementptr inbounds %struct.slave, %struct.slave* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %43
  %55 = load %struct.slave*, %struct.slave** %18, align 8
  %56 = getelementptr inbounds %struct.slave, %struct.slave* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @STATUS_HANDSHAKE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %109

60:                                               ; preds = %54, %43
  %61 = load %struct.slave*, %struct.slave** %18, align 8
  %62 = getelementptr inbounds %struct.slave, %struct.slave* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @STATUS_DOWN, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load %struct.skynet_context*, %struct.skynet_context** %17, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @PTYPE_ERROR, align 4
  %71 = call i32 @skynet_send(%struct.skynet_context* %67, i32 %68, i32 %69, i32 %70, i32 0, i8* null, i64 0)
  %72 = load %struct.skynet_context*, %struct.skynet_context** %17, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i64, i64* %15, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @skynet_error(%struct.skynet_context* %72, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74, i32 %75, i32 %76, i32 %78)
  br label %108

80:                                               ; preds = %60
  %81 = load %struct.slave*, %struct.slave** %18, align 8
  %82 = getelementptr inbounds %struct.slave, %struct.slave* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = call i32* (...) @new_queue()
  %87 = load %struct.slave*, %struct.slave** %18, align 8
  %88 = getelementptr inbounds %struct.slave, %struct.slave* %87, i32 0, i32 2
  store i32* %86, i32** %88, align 8
  br label %89

89:                                               ; preds = %85, %80
  %90 = load i32, i32* %10, align 4
  %91 = getelementptr inbounds %struct.remote_message_header, %struct.remote_message_header* %19, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @HANDLE_REMOTE_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @HANDLE_MASK, align 4
  %97 = and i32 %95, %96
  %98 = or i32 %94, %97
  %99 = getelementptr inbounds %struct.remote_message_header, %struct.remote_message_header* %19, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %13, align 4
  %101 = getelementptr inbounds %struct.remote_message_header, %struct.remote_message_header* %19, i32 0, i32 2
  store i32 %100, i32* %101, align 4
  %102 = load %struct.slave*, %struct.slave** %18, align 8
  %103 = getelementptr inbounds %struct.slave, %struct.slave* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i8*, i8** %14, align 8
  %106 = load i64, i64* %15, align 8
  %107 = call i32 @push_queue(i32* %104, i8* %105, i64 %106, %struct.remote_message_header* %19)
  store i32 1, i32* %8, align 4
  br label %130

108:                                              ; preds = %66
  br label %129

109:                                              ; preds = %54
  %110 = load i32, i32* %10, align 4
  %111 = getelementptr inbounds %struct.remote_message_header, %struct.remote_message_header* %20, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @HANDLE_MASK, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @HANDLE_REMOTE_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = or i32 %114, %117
  %119 = getelementptr inbounds %struct.remote_message_header, %struct.remote_message_header* %20, i32 0, i32 1
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %13, align 4
  %121 = getelementptr inbounds %struct.remote_message_header, %struct.remote_message_header* %20, i32 0, i32 2
  store i32 %120, i32* %121, align 4
  %122 = load %struct.skynet_context*, %struct.skynet_context** %17, align 8
  %123 = load %struct.slave*, %struct.slave** %18, align 8
  %124 = getelementptr inbounds %struct.slave, %struct.slave* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i8*, i8** %14, align 8
  %127 = load i64, i64* %15, align 8
  %128 = call i32 @send_remote(%struct.skynet_context* %122, i64 %125, i8* %126, i64 %127, %struct.remote_message_header* %20)
  br label %129

129:                                              ; preds = %109, %108
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %129, %89, %32
  %131 = load i32, i32* %8, align 4
  ret i32 %131
}

declare dso_local i32 @skynet_send(%struct.skynet_context*, i32, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32* @new_queue(...) #1

declare dso_local i32 @push_queue(i32*, i8*, i64, %struct.remote_message_header*) #1

declare dso_local i32 @send_remote(%struct.skynet_context*, i64, i8*, i64, %struct.remote_message_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
