; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c_dispatch_socket_message.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_gate.c_dispatch_socket_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gate = type { i32, i32, %struct.connection*, i32, %struct.skynet_context* }
%struct.connection = type { i32, i8*, i32 }
%struct.skynet_context = type { i32 }
%struct.skynet_socket_message = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Drop unknown connection %d message\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Close unknown connection %d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%d close\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%d open %d %s:0\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"socket open: %x\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"fd (%d) send buffer (%d)K\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gate*, %struct.skynet_socket_message*, i32)* @dispatch_socket_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_socket_message(%struct.gate* %0, %struct.skynet_socket_message* %1, i32 %2) #0 {
  %4 = alloca %struct.gate*, align 8
  %5 = alloca %struct.skynet_socket_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.skynet_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.connection*, align 8
  %13 = alloca %struct.connection*, align 8
  store %struct.gate* %0, %struct.gate** %4, align 8
  store %struct.skynet_socket_message* %1, %struct.skynet_socket_message** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.gate*, %struct.gate** %4, align 8
  %15 = getelementptr inbounds %struct.gate, %struct.gate* %14, i32 0, i32 4
  %16 = load %struct.skynet_context*, %struct.skynet_context** %15, align 8
  store %struct.skynet_context* %16, %struct.skynet_context** %7, align 8
  %17 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %18 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %205 [
    i32 130, label %20
    i32 131, label %64
    i32 132, label %94
    i32 129, label %94
    i32 133, label %125
    i32 128, label %196
  ]

20:                                               ; preds = %3
  %21 = load %struct.gate*, %struct.gate** %4, align 8
  %22 = getelementptr inbounds %struct.gate, %struct.gate* %21, i32 0, i32 1
  %23 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %24 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @hashid_lookup(i32* %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %20
  %30 = load %struct.gate*, %struct.gate** %4, align 8
  %31 = getelementptr inbounds %struct.gate, %struct.gate* %30, i32 0, i32 2
  %32 = load %struct.connection*, %struct.connection** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %32, i64 %34
  store %struct.connection* %35, %struct.connection** %9, align 8
  %36 = load %struct.gate*, %struct.gate** %4, align 8
  %37 = load %struct.connection*, %struct.connection** %9, align 8
  %38 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %39 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %42 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %45 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dispatch_message(%struct.gate* %36, %struct.connection* %37, i32 %40, i32 %43, i32 %46)
  br label %63

48:                                               ; preds = %20
  %49 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %50 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %51 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.skynet_context*, i8*, i32, ...) @skynet_error(%struct.skynet_context* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %55 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %56 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @skynet_socket_close(%struct.skynet_context* %54, i32 %57)
  %59 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %60 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @skynet_free(i32 %61)
  br label %63

63:                                               ; preds = %48, %29
  br label %205

64:                                               ; preds = %3
  %65 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %66 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.gate*, %struct.gate** %4, align 8
  %69 = getelementptr inbounds %struct.gate, %struct.gate* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %205

73:                                               ; preds = %64
  %74 = load %struct.gate*, %struct.gate** %4, align 8
  %75 = getelementptr inbounds %struct.gate, %struct.gate* %74, i32 0, i32 1
  %76 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %77 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @hashid_lookup(i32* %75, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %73
  %83 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %84 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %85 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.skynet_context*, i8*, i32, ...) @skynet_error(%struct.skynet_context* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %89 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %90 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @skynet_socket_close(%struct.skynet_context* %88, i32 %91)
  br label %93

93:                                               ; preds = %82, %73
  br label %205

94:                                               ; preds = %3, %3
  %95 = load %struct.gate*, %struct.gate** %4, align 8
  %96 = getelementptr inbounds %struct.gate, %struct.gate* %95, i32 0, i32 1
  %97 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %98 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @hashid_remove(i32* %96, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %94
  %104 = load %struct.gate*, %struct.gate** %4, align 8
  %105 = getelementptr inbounds %struct.gate, %struct.gate* %104, i32 0, i32 2
  %106 = load %struct.connection*, %struct.connection** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.connection, %struct.connection* %106, i64 %108
  store %struct.connection* %109, %struct.connection** %12, align 8
  %110 = load %struct.connection*, %struct.connection** %12, align 8
  %111 = getelementptr inbounds %struct.connection, %struct.connection* %110, i32 0, i32 2
  %112 = load %struct.gate*, %struct.gate** %4, align 8
  %113 = getelementptr inbounds %struct.gate, %struct.gate* %112, i32 0, i32 3
  %114 = call i32 @databuffer_clear(i32* %111, i32* %113)
  %115 = load %struct.connection*, %struct.connection** %12, align 8
  %116 = call i32 @memset(%struct.connection* %115, i32 0, i32 24)
  %117 = load %struct.connection*, %struct.connection** %12, align 8
  %118 = getelementptr inbounds %struct.connection, %struct.connection* %117, i32 0, i32 0
  store i32 -1, i32* %118, align 8
  %119 = load %struct.gate*, %struct.gate** %4, align 8
  %120 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %121 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (%struct.gate*, i8*, i32, ...) @_report(%struct.gate* %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %103, %94
  br label %205

125:                                              ; preds = %3
  %126 = load %struct.gate*, %struct.gate** %4, align 8
  %127 = getelementptr inbounds %struct.gate, %struct.gate* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %130 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %128, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.gate*, %struct.gate** %4, align 8
  %136 = getelementptr inbounds %struct.gate, %struct.gate* %135, i32 0, i32 1
  %137 = call i32 @hashid_full(i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %125
  %140 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %141 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %142 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @skynet_socket_close(%struct.skynet_context* %140, i32 %143)
  br label %195

145:                                              ; preds = %125
  %146 = load %struct.gate*, %struct.gate** %4, align 8
  %147 = getelementptr inbounds %struct.gate, %struct.gate* %146, i32 0, i32 2
  %148 = load %struct.connection*, %struct.connection** %147, align 8
  %149 = load %struct.gate*, %struct.gate** %4, align 8
  %150 = getelementptr inbounds %struct.gate, %struct.gate* %149, i32 0, i32 1
  %151 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %152 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @hashid_insert(i32* %150, i32 %153)
  %155 = getelementptr inbounds %struct.connection, %struct.connection* %148, i64 %154
  store %struct.connection* %155, %struct.connection** %13, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = icmp uge i64 %157, 8
  br i1 %158, label %159, label %160

159:                                              ; preds = %145
  store i32 7, i32* %6, align 4
  br label %160

160:                                              ; preds = %159, %145
  %161 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %162 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.connection*, %struct.connection** %13, align 8
  %165 = getelementptr inbounds %struct.connection, %struct.connection* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.connection*, %struct.connection** %13, align 8
  %167 = getelementptr inbounds %struct.connection, %struct.connection* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %170 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %169, i64 1
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @memcpy(i8* %168, %struct.skynet_socket_message* %170, i32 %171)
  %173 = load %struct.connection*, %struct.connection** %13, align 8
  %174 = getelementptr inbounds %struct.connection, %struct.connection* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  store i8 0, i8* %178, align 1
  %179 = load %struct.gate*, %struct.gate** %4, align 8
  %180 = load %struct.connection*, %struct.connection** %13, align 8
  %181 = getelementptr inbounds %struct.connection, %struct.connection* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.connection*, %struct.connection** %13, align 8
  %184 = getelementptr inbounds %struct.connection, %struct.connection* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.connection*, %struct.connection** %13, align 8
  %187 = getelementptr inbounds %struct.connection, %struct.connection* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 (%struct.gate*, i8*, i32, ...) @_report(%struct.gate* %179, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %182, i32 %185, i8* %188)
  %190 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %191 = load %struct.connection*, %struct.connection** %13, align 8
  %192 = getelementptr inbounds %struct.connection, %struct.connection* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (%struct.skynet_context*, i8*, i32, ...) @skynet_error(%struct.skynet_context* %190, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %160, %139
  br label %205

196:                                              ; preds = %3
  %197 = load %struct.skynet_context*, %struct.skynet_context** %7, align 8
  %198 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %199 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.skynet_socket_message*, %struct.skynet_socket_message** %5, align 8
  %202 = getelementptr inbounds %struct.skynet_socket_message, %struct.skynet_socket_message* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (%struct.skynet_context*, i8*, i32, ...) @skynet_error(%struct.skynet_context* %197, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %200, i32 %203)
  br label %205

205:                                              ; preds = %3, %196, %195, %124, %93, %72, %63
  ret void
}

declare dso_local i32 @hashid_lookup(i32*, i32) #1

declare dso_local i32 @dispatch_message(%struct.gate*, %struct.connection*, i32, i32, i32) #1

declare dso_local i32 @skynet_error(%struct.skynet_context*, i8*, i32, ...) #1

declare dso_local i32 @skynet_socket_close(%struct.skynet_context*, i32) #1

declare dso_local i32 @skynet_free(i32) #1

declare dso_local i32 @hashid_remove(i32*, i32) #1

declare dso_local i32 @databuffer_clear(i32*, i32*) #1

declare dso_local i32 @memset(%struct.connection*, i32, i32) #1

declare dso_local i32 @_report(%struct.gate*, i8*, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hashid_full(i32*) #1

declare dso_local i64 @hashid_insert(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.skynet_socket_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
