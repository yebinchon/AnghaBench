; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ws2_32/extr_helpers.c_GetRequestAndWait.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ws2_32/extr_helpers.c_GetRequestAndWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_set = type { i32 }

@__const.GetRequestAndWait.szGetRequest = private unnamed_addr constant [19 x i8] c"GET / HTTP/1.0\0D\0A\0D\0A\00", align 16
@.str = private unnamed_addr constant [14 x i8] c"iResult = %d\0A\00", align 1
@SD_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetRequestAndWait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [19 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.fd_set, align 4
  store i32 %0, i32* %2, align 4
  %6 = bitcast [19 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.GetRequestAndWait.szGetRequest, i32 0, i32 0), i64 19, i1 false)
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds [19 x i8], [19 x i8]* %3, i64 0, i64 0
  %9 = getelementptr inbounds [19 x i8], [19 x i8]* %3, i64 0, i64 0
  %10 = call i32 @strlen(i8* %9)
  %11 = call i32 @send(i32 %7, i8* %8, i32 %10, i32 0)
  %12 = call i32 @SCKTEST(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds [19 x i8], [19 x i8]* %3, i64 0, i64 0
  %15 = call i32 @strlen(i8* %14)
  %16 = icmp eq i32 %13, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = call i32 @FD_ZERO(%struct.fd_set* %5)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @FD_SET(i32 %21, %struct.fd_set* %5)
  %23 = call i32 @select(i32 0, %struct.fd_set* %5, i32* null, i32* null, i32* null)
  %24 = call i32 @SCKTEST(i32 %23)
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SCKTEST(i32) #2

declare dso_local i32 @send(i32, i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @FD_ZERO(%struct.fd_set*) #2

declare dso_local i32 @FD_SET(i32, %struct.fd_set*) #2

declare dso_local i32 @select(i32, %struct.fd_set*, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
