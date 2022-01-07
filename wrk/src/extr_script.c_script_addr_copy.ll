; ModuleID = '/home/carl/AnghaBench/wrk/src/extr_script.c_script_addr_copy.c'
source_filename = "/home/carl/AnghaBench/wrk/src/extr_script.c_script_addr_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @script_addr_copy(%struct.addrinfo* %0, %struct.addrinfo* %1) #0 {
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca %struct.addrinfo*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %3, align 8
  store %struct.addrinfo* %1, %struct.addrinfo** %4, align 8
  %5 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %6 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %7 = bitcast %struct.addrinfo* %5 to i8*
  %8 = bitcast %struct.addrinfo* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 8, i1 false)
  %9 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %10 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @zmalloc(i32 %11)
  %13 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.addrinfo*, %struct.addrinfo** %4, align 8
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %22 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memcpy(i32 %17, i32 %20, i32 %23)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zmalloc(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
