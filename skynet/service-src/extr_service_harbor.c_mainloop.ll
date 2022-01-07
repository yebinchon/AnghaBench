; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_mainloop.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_mainloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_context = type { i32 }
%struct.harbor = type { i32 }
%struct.skynet_socket_message = type { i8*, i32, i32, i32 }
%struct.remote_message = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unkown fd (%d) closed\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"message havn't send to Harbor (%d) reach %d K\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"recv invalid socket message type %d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"recv invalid message from %x,  type = %d\00", align 1
@PTYPE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skynet_context*, i8*, i32, i32, i32, i8*, i64)* @mainloop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mainloop(%struct.skynet_context* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.skynet_context*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.harbor*, align 8
  %17 = alloca %struct.skynet_socket_message*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.remote_message*, align 8
  store %struct.skynet_context* %0, %struct.skynet_context** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to %struct.harbor*
  store %struct.harbor* %22, %struct.harbor** %16, align 8
  %23 = load i32, i32* %11, align 4
  switch i32 %23, label %142 [
    i32 134, label %24
    i32 135, label %79
    i32 133, label %86
  ]

24:                                               ; preds = %7
  %25 = load i8*, i8** %14, align 8
  %26 = bitcast i8* %25 to %struct.skynet_socket_message*
  store %struct.skynet_socket_message* %26, %struct.skynet_socket_message** %17, align 8
  %27 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %17, align 8
  %28 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %74 [
    i32 130, label %30
    i32 129, label %38
    i32 132, label %38
    i32 131, label %57
    i32 128, label %58
  ]

30:                                               ; preds = %24
  %31 = load %struct.harbor*, %struct.harbor** %16, align 8
  %32 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %17, align 8
  %33 = call i32 @push_socket_data(%struct.harbor* %31, %struct.skynet_socket_message* %32)
  %34 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %17, align 8
  %35 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @skynet_free(i8* %36)
  br label %78

38:                                               ; preds = %24, %24
  %39 = load %struct.harbor*, %struct.harbor** %16, align 8
  %40 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %17, align 8
  %41 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @harbor_id(%struct.harbor* %39, i32 %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.harbor*, %struct.harbor** %16, align 8
  %48 = load i32, i32* %18, align 4
  %49 = call i32 @report_harbor_down(%struct.harbor* %47, i32 %48)
  br label %56

50:                                               ; preds = %38
  %51 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %52 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %17, align 8
  %53 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.skynet_context*, i8*, i32, ...) @skynet_error(%struct.skynet_context* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %46
  br label %78

57:                                               ; preds = %24
  br label %78

58:                                               ; preds = %24
  %59 = load %struct.harbor*, %struct.harbor** %16, align 8
  %60 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %17, align 8
  %61 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @harbor_id(%struct.harbor* %59, i32 %62)
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %68 = load i32, i32* %19, align 4
  %69 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %17, align 8
  %70 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (%struct.skynet_context*, i8*, i32, ...) @skynet_error(%struct.skynet_context* %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %66, %58
  br label %78

74:                                               ; preds = %24
  %75 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (%struct.skynet_context*, i8*, i32, ...) @skynet_error(%struct.skynet_context* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %73, %57, %56, %30
  store i32 0, i32* %8, align 4
  br label %160

79:                                               ; preds = %7
  %80 = load %struct.harbor*, %struct.harbor** %16, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @harbor_command(%struct.harbor* %80, i8* %81, i64 %82, i32 %83, i32 %84)
  store i32 0, i32* %8, align 4
  br label %160

86:                                               ; preds = %7
  %87 = load i8*, i8** %14, align 8
  %88 = bitcast i8* %87 to %struct.remote_message*
  store %struct.remote_message* %88, %struct.remote_message** %20, align 8
  %89 = load %struct.remote_message*, %struct.remote_message** %20, align 8
  %90 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %86
  %95 = load %struct.harbor*, %struct.harbor** %16, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load %struct.remote_message*, %struct.remote_message** %20, align 8
  %98 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.remote_message*, %struct.remote_message** %20, align 8
  %102 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.remote_message*, %struct.remote_message** %20, align 8
  %106 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.remote_message*, %struct.remote_message** %20, align 8
  %109 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @remote_send_name(%struct.harbor* %95, i32 %96, i32 %100, i32 %103, i32 %104, i64 %107, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %94
  store i32 0, i32* %8, align 4
  br label %160

114:                                              ; preds = %94
  br label %136

115:                                              ; preds = %86
  %116 = load %struct.harbor*, %struct.harbor** %16, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load %struct.remote_message*, %struct.remote_message** %20, align 8
  %119 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.remote_message*, %struct.remote_message** %20, align 8
  %123 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.remote_message*, %struct.remote_message** %20, align 8
  %127 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.remote_message*, %struct.remote_message** %20, align 8
  %130 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @remote_send_handle(%struct.harbor* %116, i32 %117, i32 %121, i32 %124, i32 %125, i64 %128, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %115
  store i32 0, i32* %8, align 4
  br label %160

135:                                              ; preds = %115
  br label %136

136:                                              ; preds = %135, %114
  %137 = load %struct.remote_message*, %struct.remote_message** %20, align 8
  %138 = getelementptr inbounds %struct.remote_message, %struct.remote_message* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to i8*
  %141 = call i32 @skynet_free(i8* %140)
  store i32 0, i32* %8, align 4
  br label %160

142:                                              ; preds = %7
  %143 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %11, align 4
  %146 = call i32 (%struct.skynet_context*, i8*, i32, ...) @skynet_error(%struct.skynet_context* %143, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %142
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @PTYPE_ERROR, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load %struct.skynet_context*, %struct.skynet_context** %9, align 8
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* @PTYPE_ERROR, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @skynet_send(%struct.skynet_context* %154, i32 0, i32 %155, i32 %156, i32 %157, i32* null, i32 0)
  br label %159

159:                                              ; preds = %153, %149, %142
  store i32 0, i32* %8, align 4
  br label %160

160:                                              ; preds = %159, %136, %134, %113, %79, %78
  %161 = load i32, i32* %8, align 4
  ret i32 %161
}

declare dso_local i32 @push_socket_data(%struct.harbor*, %struct.skynet_socket_message*) #1

declare dso_local i32 @skynet_free(i8*) #1

declare dso_local i32 @harbor_id(%struct.harbor*, i32) #1

declare dso_local i32 @report_harbor_down(%struct.harbor*, i32) #1

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, i32, ...) #1

declare dso_local i32 @harbor_command(%struct.harbor*, i8*, i64, i32, i32) #1

declare dso_local i32 @remote_send_name(%struct.harbor*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @remote_send_handle(%struct.harbor*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @skynet_send(%struct.skynet_context*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
