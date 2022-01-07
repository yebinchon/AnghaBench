; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c__ctrl.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c__ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gate = type { i32, i32, i32, %struct.skynet_context* }
%struct.skynet_context = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"kick\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"broker\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"[gate] Unkown command : %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gate*, i8*, i32)* @_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ctrl(%struct.gate* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.gate*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.skynet_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.gate* %0, %struct.gate** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load %struct.gate*, %struct.gate** %4, align 8
  %24 = getelementptr inbounds %struct.gate, %struct.gate* %23, i32 0, i32 3
  %25 = load %struct.skynet_context*, %struct.skynet_context** %24, align 8
  store %struct.skynet_context* %25, %struct.skynet_context** %7, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %8, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @memcpy(i8* %30, i8* %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %30, i64 %35
  store i8 0, i8* %36, align 1
  store i8* %30, i8** %10, align 8
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  store i32 1, i32* %12, align 4
  br label %171

40:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %55, %40
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %58

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %41

58:                                               ; preds = %53, %41
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @memcmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @_parm(i8* %30, i32 %64, i32 %65)
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @strtol(i8* %67, i32* null, i32 10)
  store i32 %68, i32* %13, align 4
  %69 = load %struct.gate*, %struct.gate** %4, align 8
  %70 = getelementptr inbounds %struct.gate, %struct.gate* %69, i32 0, i32 1
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @hashid_lookup(i32* %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @skynet_socket_close(%struct.skynet_context* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %63
  store i32 1, i32* %12, align 4
  br label %171

80:                                               ; preds = %58
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @memcmp(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @_parm(i8* %30, i32 %86, i32 %87)
  store i8* %30, i8** %15, align 8
  %89 = call i8* @strsep(i8** %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %89, i8** %16, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 1, i32* %12, align 4
  br label %171

93:                                               ; preds = %85
  %94 = load i8*, i8** %16, align 8
  %95 = call i32 @strtol(i8* %94, i32* null, i32 10)
  store i32 %95, i32* %17, align 4
  %96 = call i8* @strsep(i8** %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %96, i8** %18, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 1, i32* %12, align 4
  br label %171

100:                                              ; preds = %93
  %101 = load i8*, i8** %18, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = call i32 @strtoul(i8* %102, i32* null, i32 16)
  store i32 %103, i32* %19, align 4
  %104 = load i8*, i8** %15, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = call i32 @strtoul(i8* %105, i32* null, i32 16)
  store i32 %106, i32* %20, align 4
  %107 = load %struct.gate*, %struct.gate** %4, align 8
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %20, align 4
  %111 = call i32 @_forward_agent(%struct.gate* %107, i32 %108, i32 %109, i32 %110)
  store i32 1, i32* %12, align 4
  br label %171

112:                                              ; preds = %80
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i64 @memcmp(i8* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @_parm(i8* %30, i32 %118, i32 %119)
  %121 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @skynet_queryname(%struct.skynet_context* %121, i8* %122)
  %124 = load %struct.gate*, %struct.gate** %4, align 8
  %125 = getelementptr inbounds %struct.gate, %struct.gate* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  store i32 1, i32* %12, align 4
  br label %171

126:                                              ; preds = %112
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i64 @memcmp(i8* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %126
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @_parm(i8* %30, i32 %132, i32 %133)
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 @strtol(i8* %135, i32* null, i32 10)
  store i32 %136, i32* %21, align 4
  %137 = load %struct.gate*, %struct.gate** %4, align 8
  %138 = getelementptr inbounds %struct.gate, %struct.gate* %137, i32 0, i32 1
  %139 = load i32, i32* %21, align 4
  %140 = call i32 @hashid_lookup(i32* %138, i32 %139)
  store i32 %140, i32* %22, align 4
  %141 = load i32, i32* %22, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %131
  %144 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %145 = load i32, i32* %21, align 4
  %146 = call i32 @skynet_socket_start(%struct.skynet_context* %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %131
  store i32 1, i32* %12, align 4
  br label %171

148:                                              ; preds = %126
  %149 = load i8*, i8** %10, align 8
  %150 = load i32, i32* %11, align 4
  %151 = call i64 @memcmp(i8* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %148
  %154 = load %struct.gate*, %struct.gate** %4, align 8
  %155 = getelementptr inbounds %struct.gate, %struct.gate* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp sge i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %153
  %159 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %160 = load %struct.gate*, %struct.gate** %4, align 8
  %161 = getelementptr inbounds %struct.gate, %struct.gate* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @skynet_socket_close(%struct.skynet_context* %159, i32 %162)
  %164 = load %struct.gate*, %struct.gate** %4, align 8
  %165 = getelementptr inbounds %struct.gate, %struct.gate* %164, i32 0, i32 0
  store i32 -1, i32* %165, align 8
  br label %166

166:                                              ; preds = %158, %153
  store i32 1, i32* %12, align 4
  br label %171

167:                                              ; preds = %148
  %168 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = call i32 @skynet_error(%struct.skynet_context* %168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %169)
  store i32 0, i32* %12, align 4
  br label %171

171:                                              ; preds = %167, %166, %147, %117, %100, %99, %92, %79, %39
  %172 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %12, align 4
  switch i32 %173, label %175 [
    i32 0, label %174
    i32 1, label %174
  ]

174:                                              ; preds = %171, %171
  ret void

175:                                              ; preds = %171
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @_parm(i8*, i32, i32) #2

declare dso_local i32 @strtol(i8*, i32*, i32) #2

declare dso_local i32 @hashid_lookup(i32*, i32) #2

declare dso_local i32 @skynet_socket_close(%struct.skynet_context*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @_forward_agent(%struct.gate*, i32, i32, i32) #2

declare dso_local i32 @skynet_queryname(%struct.skynet_context*, i8*) #2

declare dso_local i32 @skynet_socket_start(%struct.skynet_context*, i32) #2

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
