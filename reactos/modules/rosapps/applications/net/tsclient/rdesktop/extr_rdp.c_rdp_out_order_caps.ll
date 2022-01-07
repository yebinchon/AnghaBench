; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_out_order_caps.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_out_order_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@RDP_CAPSET_ORDER = common dso_local global i32 0, align 4
@RDP_CAPLEN_ORDER = common dso_local global i32 0, align 4
@False = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @rdp_out_order_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdp_out_order_caps(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %7 = call i32 @memset(i32* %6, i32 0, i32 32)
  %8 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  store i32 1, i32* %8, align 16
  %9 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 1
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 2
  store i32 1, i32* %10, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 1, i32 0
  %17 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 3
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 4
  store i32 0, i32* %18, align 16
  %19 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 8
  store i32 1, i32* %19, align 16
  %20 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 9
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 10
  store i32 1, i32* %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  %28 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 11
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 13
  store i32 1, i32* %29, align 4
  %30 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 14
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 20
  store i32 %36, i32* %37, align 16
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 21
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 22
  store i32 1, i32* %45, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 25
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  %59 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 26
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 27
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @RDP_CAPSET_ORDER, align 4
  %63 = call i32 @out_uint16_le(i32 %61, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @RDP_CAPLEN_ORDER, align 4
  %66 = call i32 @out_uint16_le(i32 %64, i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @out_uint8s(i32 %67, i32 20)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @out_uint16_le(i32 %69, i32 1)
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @out_uint16_le(i32 %71, i32 20)
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @out_uint16(i32 %73, i32 0)
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @out_uint16_le(i32 %75, i32 1)
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @out_uint16_le(i32 %77, i32 327)
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @out_uint16_le(i32 %79, i32 42)
  %81 = load i32, i32* %4, align 4
  %82 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %83 = call i32 @out_uint8p(i32 %81, i32* %82, i32 32)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @out_uint16_le(i32 %84, i32 1697)
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @out_uint8s(i32 %86, i32 6)
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @False, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 0, i32 230400
  %96 = call i32 @out_uint32_le(i32 %88, i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @out_uint32(i32 %97, i32 0)
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @out_uint32_le(i32 %99, i32 1252)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @out_uint16_le(i32, i32) #1

declare dso_local i32 @out_uint8s(i32, i32) #1

declare dso_local i32 @out_uint16(i32, i32) #1

declare dso_local i32 @out_uint8p(i32, i32*, i32) #1

declare dso_local i32 @out_uint32_le(i32, i32) #1

declare dso_local i32 @out_uint32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
