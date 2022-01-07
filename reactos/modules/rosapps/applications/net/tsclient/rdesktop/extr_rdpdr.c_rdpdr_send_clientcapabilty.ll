; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_rdpdr_send_clientcapabilty.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_rdpdr_send_clientcapabilty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@__const.rdpdr_send_clientcapabilty.magic = private unnamed_addr constant [4 x i8] c"rDPC", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @rdpdr_send_clientcapabilty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdpdr_send_clientcapabilty(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca [4 x i8], align 1
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = bitcast [4 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.rdpdr_send_clientcapabilty.magic, i32 0, i32 0), i64 4, i1 false)
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @channel_init(%struct.TYPE_7__* %6, i32 %10, i32 80)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %14 = call i32 @out_uint8a(i32 %12, i8* %13, i32 4)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @out_uint32_le(i32 %15, i32 5)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @out_uint16_le(i32 %17, i32 1)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @out_uint16_le(i32 %19, i32 40)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @out_uint32_le(i32 %21, i32 1)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @out_uint32_le(i32 %23, i32 2)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @out_uint16_le(i32 %25, i32 2)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @out_uint16_le(i32 %27, i32 5)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @out_uint16_le(i32 %29, i32 1)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @out_uint16_le(i32 %31, i32 5)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @out_uint16_le(i32 %33, i32 65535)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @out_uint16_le(i32 %35, i32 0)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @out_uint32_le(i32 %37, i32 0)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @out_uint32_le(i32 %39, i32 3)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @out_uint32_le(i32 %41, i32 0)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @out_uint32_le(i32 %43, i32 0)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @out_uint16_le(i32 %45, i32 2)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @out_uint16_le(i32 %47, i32 8)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @out_uint32_le(i32 %49, i32 1)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @out_uint16_le(i32 %51, i32 3)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @out_uint16_le(i32 %53, i32 8)
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @out_uint32_le(i32 %55, i32 1)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @out_uint16_le(i32 %57, i32 4)
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @out_uint16_le(i32 %59, i32 8)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @out_uint32_le(i32 %61, i32 1)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @out_uint16_le(i32 %63, i32 5)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @out_uint16_le(i32 %65, i32 8)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @out_uint32_le(i32 %67, i32 1)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @s_mark_end(i32 %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @channel_send(%struct.TYPE_7__* %71, i32 %72, i32 %76)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @channel_init(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @out_uint8a(i32, i8*, i32) #2

declare dso_local i32 @out_uint32_le(i32, i32) #2

declare dso_local i32 @out_uint16_le(i32, i32) #2

declare dso_local i32 @s_mark_end(i32) #2

declare dso_local i32 @channel_send(%struct.TYPE_7__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
