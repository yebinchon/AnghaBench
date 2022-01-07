; ModuleID = '/home/carl/AnghaBench/skynet/service-src/extr_service_snlua.c_snlua_init.c'
source_filename = "/home/carl/AnghaBench/skynet/service-src/extr_service_snlua.c_snlua_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snlua = type { i32 }
%struct.skynet_context = type { i32 }

@launch_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"REG\00", align 1
@PTYPE_TAG_DONTCOPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snlua_init(%struct.snlua* %0, %struct.skynet_context* %1, i8* %2) #0 {
  %4 = alloca %struct.snlua*, align 8
  %5 = alloca %struct.skynet_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.snlua* %0, %struct.snlua** %4, align 8
  store %struct.skynet_context* %1, %struct.skynet_context** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @skynet_malloc(i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @memcpy(i8* %15, i8* %16, i32 %17)
  %19 = load %struct.skynet_context*, %struct.skynet_context** %5, align 8
  %20 = load %struct.snlua*, %struct.snlua** %4, align 8
  %21 = load i32, i32* @launch_cb, align 4
  %22 = call i32 @skynet_callback(%struct.skynet_context* %19, %struct.snlua* %20, i32 %21)
  %23 = load %struct.skynet_context*, %struct.skynet_context** %5, align 8
  %24 = call i8* @skynet_command(%struct.skynet_context* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = call i32 @strtoul(i8* %26, i32* null, i32 16)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.skynet_context*, %struct.skynet_context** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @PTYPE_TAG_DONTCOPY, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @skynet_send(%struct.skynet_context* %28, i32 0, i32 %29, i32 %30, i32 0, i8* %31, i32 %32)
  ret i32 0
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @skynet_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @skynet_callback(%struct.skynet_context*, %struct.snlua*, i32) #1

declare dso_local i8* @skynet_command(%struct.skynet_context*, i8*, i32*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @skynet_send(%struct.skynet_context*, i32, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
