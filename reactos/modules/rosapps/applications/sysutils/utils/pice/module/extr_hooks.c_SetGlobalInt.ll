; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hooks.c_SetGlobalInt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hooks.c_SetGlobalInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IdtEntry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"new INT(%0.2x) handler = %0.4x:%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"old INT(%0.2x) handler = %0.4x:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetGlobalInt(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.IdtEntry*, align 8
  %8 = alloca %struct.IdtEntry, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @ENTER_FUNC()
  call void asm "sidt $0", "=*m,~{dirflag},~{fpsr},~{flags}"([2 x i32]* %5) #3, !srcloc !2
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 16
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 16
  %16 = and i32 %15, 65535
  %17 = or i32 %12, %16
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.IdtEntry*
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.IdtEntry, %struct.IdtEntry* %19, i64 %21
  store %struct.IdtEntry* %22, %struct.IdtEntry** %7, align 8
  %23 = load %struct.IdtEntry*, %struct.IdtEntry** %7, align 8
  %24 = bitcast %struct.IdtEntry* %8 to i8*
  %25 = bitcast %struct.IdtEntry* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 12, i1 false)
  %26 = load i32, i32* %4, align 4
  %27 = ashr i32 %26, 16
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.IdtEntry*, %struct.IdtEntry** %7, align 8
  %32 = getelementptr inbounds %struct.IdtEntry, %struct.IdtEntry* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 65535
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.IdtEntry*, %struct.IdtEntry** %7, align 8
  %39 = getelementptr inbounds %struct.IdtEntry, %struct.IdtEntry* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.IdtEntry*, %struct.IdtEntry** %7, align 8
  %42 = getelementptr inbounds %struct.IdtEntry, %struct.IdtEntry* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.IdtEntry*, %struct.IdtEntry** %7, align 8
  %45 = getelementptr inbounds %struct.IdtEntry, %struct.IdtEntry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 16
  %48 = load %struct.IdtEntry*, %struct.IdtEntry** %7, align 8
  %49 = getelementptr inbounds %struct.IdtEntry, %struct.IdtEntry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 65535
  %52 = or i32 %47, %51
  %53 = call i32 @DPRINT(i32 %52)
  %54 = getelementptr inbounds %struct.IdtEntry, %struct.IdtEntry* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 16
  %57 = getelementptr inbounds %struct.IdtEntry, %struct.IdtEntry* %8, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 65535
  %60 = or i32 %56, %59
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.IdtEntry*, %struct.IdtEntry** %7, align 8
  %63 = getelementptr inbounds %struct.IdtEntry, %struct.IdtEntry* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @DPRINT(i32 %65)
  %67 = call i32 (...) @LEAVE_FUNC()
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @ENTER_FUNC(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 491}
