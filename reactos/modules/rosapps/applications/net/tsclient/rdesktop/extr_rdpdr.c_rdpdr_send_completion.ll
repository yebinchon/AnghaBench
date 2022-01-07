; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_rdpdr_send_completion.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_rdpdr_send_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@__const.rdpdr_send_completion.magic = private unnamed_addr constant [4 x i8] c"rDCI", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i32, i32, i8*, i32)* @rdpdr_send_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdpdr_send_completion(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [4 x i8], align 1
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = bitcast [4 x i8]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.rdpdr_send_completion.magic, i32 0, i32 0), i64 4, i1 false)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %14, align 4
  %24 = add nsw i32 20, %23
  %25 = call i32 @channel_init(%struct.TYPE_7__* %18, i32 %22, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %28 = call i32 @out_uint8a(i32 %26, i8* %27, i32 4)
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @out_uint32_le(i32 %29, i32 %30)
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @out_uint32_le(i32 %32, i32 %33)
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @out_uint32_le(i32 %35, i32 %36)
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @out_uint32_le(i32 %38, i32 %39)
  %41 = load i32, i32* %16, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @out_uint8p(i32 %41, i8* %42, i32 %43)
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @s_mark_end(i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @channel_send(%struct.TYPE_7__* %47, i32 %48, i32 %52)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @channel_init(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @out_uint8a(i32, i8*, i32) #2

declare dso_local i32 @out_uint32_le(i32, i32) #2

declare dso_local i32 @out_uint8p(i32, i8*, i32) #2

declare dso_local i32 @s_mark_end(i32) #2

declare dso_local i32 @channel_send(%struct.TYPE_7__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
