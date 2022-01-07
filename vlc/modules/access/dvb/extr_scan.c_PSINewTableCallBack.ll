; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_PSINewTableCallBack.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_PSINewTableCallBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SDT_CURRENT_TS_TABLE_ID = common dso_local global i64 0, align 8
@SDT_OTHER_TS_TABLE_ID = common dso_local global i64 0, align 8
@SDTCallBack = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"PSINewTableCallback: failed attaching SDTCallback\00", align 1
@NIT_CURRENT_NETWORK_TABLE_ID = common dso_local global i64 0, align 8
@NIT_OTHER_NETWORK_TABLE_ID = common dso_local global i64 0, align 8
@NITCallBack = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"PSINewTableCallback: failed attaching NITCallback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32, i8*)* @PSINewTableCallBack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PSINewTableCallBack(i32* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @SDT_CURRENT_TS_TABLE_ID, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @SDT_OTHER_TS_TABLE_ID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15, %4
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i64, i64* @SDTCallBack, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = call i32 @dvbpsi_sdt_attach(i32* %20, i64 %21, i32 %22, i32 %24, %struct.TYPE_4__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @msg_Err(i32 %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %19
  br label %58

34:                                               ; preds = %15
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @NIT_CURRENT_NETWORK_TABLE_ID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @NIT_OTHER_NETWORK_TABLE_ID, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38, %34
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i64, i64* @NITCallBack, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = call i32 @dvbpsi_nit_attach(i32* %43, i64 %44, i32 %45, i32 %47, %struct.TYPE_4__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %42
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @msg_Err(i32 %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %42
  br label %57

57:                                               ; preds = %56, %38
  br label %58

58:                                               ; preds = %57, %33
  ret void
}

declare dso_local i32 @dvbpsi_sdt_attach(i32*, i64, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @msg_Err(i32, i8*) #1

declare dso_local i32 @dvbpsi_nit_attach(i32*, i64, i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
