; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_decode_opcode.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_instruction_emul.c_decode_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vie = type { %struct.TYPE_2__ }

@one_byte_opcodes = common dso_local global %struct.TYPE_2__* null, align 8
@VIE_OP_TYPE_NONE = common dso_local global i64 0, align 8
@VIE_OP_TYPE_TWO_BYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vie*)* @decode_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_opcode(%struct.vie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vie*, align 8
  %4 = alloca i64, align 8
  store %struct.vie* %0, %struct.vie** %3, align 8
  %5 = load %struct.vie*, %struct.vie** %3, align 8
  %6 = call i64 @vie_peek(%struct.vie* %5, i64* %4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %37

9:                                                ; preds = %1
  %10 = load %struct.vie*, %struct.vie** %3, align 8
  %11 = getelementptr inbounds %struct.vie, %struct.vie* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @one_byte_opcodes, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %13
  %15 = bitcast %struct.TYPE_2__* %11 to i8*
  %16 = bitcast %struct.TYPE_2__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false)
  %17 = load %struct.vie*, %struct.vie** %3, align 8
  %18 = getelementptr inbounds %struct.vie, %struct.vie* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VIE_OP_TYPE_NONE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %37

24:                                               ; preds = %9
  %25 = load %struct.vie*, %struct.vie** %3, align 8
  %26 = call i32 @vie_advance(%struct.vie* %25)
  %27 = load %struct.vie*, %struct.vie** %3, align 8
  %28 = getelementptr inbounds %struct.vie, %struct.vie* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VIE_OP_TYPE_TWO_BYTE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.vie*, %struct.vie** %3, align 8
  %35 = call i32 @decode_two_byte_opcode(%struct.vie* %34)
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33, %23, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @vie_peek(%struct.vie*, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vie_advance(%struct.vie*) #1

declare dso_local i32 @decode_two_byte_opcode(%struct.vie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
