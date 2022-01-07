; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_write_chars.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_write_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@g_coord = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@g_hConOut = common dso_local global i32 0, align 4
@g_attrCurrent = common dso_local global i32 0, align 4
@g_srScrollRegion = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@Columns = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @write_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_chars(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_6__* @g_coord to i8*), i64 16, i1 false)
  %8 = load i32, i32* @g_hConOut, align 4
  %9 = load i32, i32* @g_attrCurrent, align 4
  %10 = load i32, i32* %4, align 4
  %11 = bitcast %struct.TYPE_6__* %5 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @FillConsoleOutputAttribute(i32 %8, i32 %9, i32 %10, i64 %13, i64 %15, i32* %6)
  %17 = load i32, i32* @g_hConOut, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = bitcast %struct.TYPE_6__* %5 to { i64, i64 }*
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @WriteConsoleOutputCharacter(i32 %17, i32 %18, i32 %19, i64 %22, i64 %24, i32* %6)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %2
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_coord, i32 0, i32 0), align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_coord, i32 0, i32 0), align 8
  br label %36

36:                                               ; preds = %50, %31
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_coord, i32 0, i32 0), align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_srScrollRegion, i32 0, i32 0), align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i64, i64* @Columns, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_coord, i32 0, i32 0), align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_coord, i32 0, i32 0), align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_coord, i32 0, i32 1), align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @g_srScrollRegion, i32 0, i32 1), align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_coord, i32 0, i32 1), align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_coord, i32 0, i32 1), align 8
  br label %50

50:                                               ; preds = %47, %40
  br label %36

51:                                               ; preds = %36
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_coord, i32 0, i32 0), align 8
  %53 = add nsw i64 %52, 1
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_coord, i32 0, i32 1), align 8
  %55 = add nsw i64 %54, 1
  %56 = call i32 @gotoxy(i64 %53, i64 %55)
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @FillConsoleOutputAttribute(i32, i32, i32, i64, i64, i32*) #2

declare dso_local i64 @WriteConsoleOutputCharacter(i32, i32, i32, i64, i64, i32*) #2

declare dso_local i32 @gotoxy(i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
