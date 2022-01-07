; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_drop_message.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_skynet_server.c_drop_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skynet_message = type { i32, i32 }
%struct.drop_t = type { i32 }

@PTYPE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skynet_message*, i8*)* @drop_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_message(%struct.skynet_message* %0, i8* %1) #0 {
  %3 = alloca %struct.skynet_message*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drop_t*, align 8
  %6 = alloca i32, align 4
  store %struct.skynet_message* %0, %struct.skynet_message** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.drop_t*
  store %struct.drop_t* %8, %struct.drop_t** %5, align 8
  %9 = load %struct.skynet_message*, %struct.skynet_message** %3, align 8
  %10 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @skynet_free(i32 %11)
  %13 = load %struct.drop_t*, %struct.drop_t** %5, align 8
  %14 = getelementptr inbounds %struct.drop_t, %struct.drop_t* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @assert(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.skynet_message*, %struct.skynet_message** %3, align 8
  %20 = getelementptr inbounds %struct.skynet_message, %struct.skynet_message* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PTYPE_ERROR, align 4
  %23 = call i32 @skynet_send(i32* null, i32 %18, i32 %21, i32 %22, i32 0, i32* null, i32 0)
  ret void
}

declare dso_local i32 @skynet_free(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @skynet_send(i32*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
