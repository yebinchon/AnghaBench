; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_bcwrite.c_bcwrite_bytecode.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_bcwrite.c_bcwrite_bytecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32, i64 }

@BC_FORL = common dso_local global i64 0, align 8
@BC_IFORL = common dso_local global i64 0, align 8
@BC_IITERL = common dso_local global i64 0, align 8
@BC_ILOOP = common dso_local global i64 0, align 8
@BC_JFORI = common dso_local global i64 0, align 8
@BC_JFORL = common dso_local global i64 0, align 8
@BC_JITERL = common dso_local global i64 0, align 8
@BC_JLOOP = common dso_local global i64 0, align 8
@PROTO_ILOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_9__*, i8*, %struct.TYPE_8__*)* @bcwrite_bytecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bcwrite_bytecode(%struct.TYPE_9__* %0, i8* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %10, 1
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = call i64 @proto_bc(%struct.TYPE_8__* %13)
  %15 = add nsw i64 %14, 1
  %16 = load i64, i64* %7, align 8
  %17 = mul nsw i64 %16, 4
  %18 = call i8* @lj_buf_wmem(i8* %12, i64 %15, i64 %17)
  store i8* %18, i8** %5, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = call i32 @UNUSED(%struct.TYPE_9__* %19)
  %21 = load i8*, i8** %5, align 8
  ret i8* %21
}

declare dso_local i8* @lj_buf_wmem(i8*, i64, i64) #1

declare dso_local i64 @proto_bc(%struct.TYPE_8__*) #1

declare dso_local i32 @UNUSED(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
