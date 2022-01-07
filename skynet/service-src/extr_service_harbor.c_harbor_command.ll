; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_harbor_command.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_harbor.c_harbor_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.harbor = type { i32, %struct.slave* }
%struct.slave = type { i32, i32 }
%struct.remote_name = type { i8*, i32 }

@GLOBALNAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid global name %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@REMOTE_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Invalid command %c %s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Harbor %d alreay exist\00", align 1
@STATUS_HANDSHAKE = common dso_local global i32 0, align 4
@STATUS_HEADER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Unknown command %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.harbor*, i8*, i64, i32, i32)* @harbor_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @harbor_command(%struct.harbor* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.harbor*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.remote_name, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.slave*, align 8
  store %struct.harbor* %0, %struct.harbor** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  store i8* %21, i8** %11, align 8
  %22 = load i64, i64* %8, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = sub nsw i32 %24, 2
  store i32 %25, i32* %12, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  switch i32 %29, label %138 [
    i32 78, label %30
    i32 83, label %58
    i32 65, label %58
  ]

30:                                               ; preds = %5
  %31 = load i32, i32* %12, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @GLOBALNAME_LENGTH, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33, %30
  %38 = load %struct.harbor*, %struct.harbor** %6, align 8
  %39 = getelementptr inbounds %struct.harbor, %struct.harbor* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 (i32, i8*, ...) @skynet_error(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %144

43:                                               ; preds = %33
  %44 = call i32 @memset(%struct.remote_name* %13, i32 0, i32 16)
  %45 = getelementptr inbounds %struct.remote_name, %struct.remote_name* %13, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @memcpy(i8* %46, i8* %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = getelementptr inbounds %struct.remote_name, %struct.remote_name* %13, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load %struct.harbor*, %struct.harbor** %6, align 8
  %53 = getelementptr inbounds %struct.remote_name, %struct.remote_name* %13, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.remote_name, %struct.remote_name* %13, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @update_name(%struct.harbor* %52, i8* %54, i32 %56)
  br label %144

58:                                               ; preds = %5, %5
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = call i8* @llvm.stacksave()
  store i8* %62, i8** %14, align 8
  %63 = alloca i8, i64 %61, align 16
  store i64 %61, i64* %15, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @memcpy(i8* %63, i8* %64, i32 %65)
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  store i8 0, i8* %69, align 1
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %70 = call i32 @sscanf(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %16, i32* %17)
  %71 = load i32, i32* %16, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %17, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* @REMOTE_MAX, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76, %73, %58
  %81 = load %struct.harbor*, %struct.harbor** %6, align 8
  %82 = getelementptr inbounds %struct.harbor, %struct.harbor* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = call i32 (i32, i8*, ...) @skynet_error(i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %87, i8* %63)
  store i32 1, i32* %18, align 4
  br label %135

89:                                               ; preds = %76
  %90 = load %struct.harbor*, %struct.harbor** %6, align 8
  %91 = getelementptr inbounds %struct.harbor, %struct.harbor* %90, i32 0, i32 1
  %92 = load %struct.slave*, %struct.slave** %91, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.slave, %struct.slave* %92, i64 %94
  store %struct.slave* %95, %struct.slave** %19, align 8
  %96 = load %struct.slave*, %struct.slave** %19, align 8
  %97 = getelementptr inbounds %struct.slave, %struct.slave* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %89
  %101 = load %struct.harbor*, %struct.harbor** %6, align 8
  %102 = getelementptr inbounds %struct.harbor, %struct.harbor* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %17, align 4
  %105 = call i32 (i32, i8*, ...) @skynet_error(i32 %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  store i32 1, i32* %18, align 4
  br label %135

106:                                              ; preds = %89
  %107 = load i32, i32* %16, align 4
  %108 = load %struct.slave*, %struct.slave** %19, align 8
  %109 = getelementptr inbounds %struct.slave, %struct.slave* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.harbor*, %struct.harbor** %6, align 8
  %111 = getelementptr inbounds %struct.harbor, %struct.harbor* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @skynet_socket_start(i32 %112, i32 %113)
  %115 = load %struct.harbor*, %struct.harbor** %6, align 8
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @handshake(%struct.harbor* %115, i32 %116)
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 83
  br i1 %122, label %123, label %127

123:                                              ; preds = %106
  %124 = load i32, i32* @STATUS_HANDSHAKE, align 4
  %125 = load %struct.slave*, %struct.slave** %19, align 8
  %126 = getelementptr inbounds %struct.slave, %struct.slave* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  br label %134

127:                                              ; preds = %106
  %128 = load i32, i32* @STATUS_HEADER, align 4
  %129 = load %struct.slave*, %struct.slave** %19, align 8
  %130 = getelementptr inbounds %struct.slave, %struct.slave* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.harbor*, %struct.harbor** %6, align 8
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @dispatch_queue(%struct.harbor* %131, i32 %132)
  br label %134

134:                                              ; preds = %127, %123
  store i32 2, i32* %18, align 4
  br label %135

135:                                              ; preds = %134, %100, %80
  %136 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load i32, i32* %18, align 4
  switch i32 %137, label %145 [
    i32 1, label %144
    i32 2, label %144
  ]

138:                                              ; preds = %5
  %139 = load %struct.harbor*, %struct.harbor** %6, align 8
  %140 = getelementptr inbounds %struct.harbor, %struct.harbor* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 (i32, i8*, ...) @skynet_error(i32 %141, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %142)
  br label %144

144:                                              ; preds = %37, %135, %138, %135, %43
  ret void

145:                                              ; preds = %135
  unreachable
}

declare dso_local i32 @skynet_error(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.remote_name*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @update_name(%struct.harbor*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @skynet_socket_start(i32, i32) #1

declare dso_local i32 @handshake(%struct.harbor*, i32) #1

declare dso_local i32 @dispatch_queue(%struct.harbor*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
