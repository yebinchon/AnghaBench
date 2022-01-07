; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_ifproxy_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_ifproxy_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifproxy = type { i64, i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifproxy*)* @ifproxy_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifproxy_destroy(%struct.ifproxy* %0) #0 {
  %2 = alloca %struct.ifproxy*, align 8
  store %struct.ifproxy* %0, %struct.ifproxy** %2, align 8
  %3 = load %struct.ifproxy*, %struct.ifproxy** %2, align 8
  %4 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.ifproxy* %3)
  %5 = load %struct.ifproxy*, %struct.ifproxy** %2, align 8
  %6 = call i32 @ifproxy_release_public_refs(%struct.ifproxy* %5)
  %7 = load %struct.ifproxy*, %struct.ifproxy** %2, align 8
  %8 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %7, i32 0, i32 2
  %9 = call i32 @list_remove(i32* %8)
  %10 = load %struct.ifproxy*, %struct.ifproxy** %2, align 8
  %11 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.ifproxy*, %struct.ifproxy** %2, align 8
  %16 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @IRpcChannelBuffer_Release(i32* %17)
  %19 = load %struct.ifproxy*, %struct.ifproxy** %2, align 8
  %20 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.ifproxy*, %struct.ifproxy** %2, align 8
  %23 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.ifproxy*, %struct.ifproxy** %2, align 8
  %28 = getelementptr inbounds %struct.ifproxy, %struct.ifproxy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @IRpcProxyBuffer_Release(i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load %struct.ifproxy*, %struct.ifproxy** %2, align 8
  %34 = call i32 @HeapFree(i32 %32, i32 0, %struct.ifproxy* %33)
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.ifproxy*) #1

declare dso_local i32 @ifproxy_release_public_refs(%struct.ifproxy*) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @IRpcChannelBuffer_Release(i32*) #1

declare dso_local i32 @IRpcProxyBuffer_Release(i64) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.ifproxy*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
