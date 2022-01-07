; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_release_marshal_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_stub_manager_release_marshal_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_manager = type { i32 }
%struct.ifstub = type { i32 }

@MSHLFLAGS_TABLEWEAK = common dso_local global i32 0, align 4
@MSHLFLAGS_TABLESTRONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stub_manager_release_marshal_data(%struct.stub_manager* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.stub_manager*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifstub*, align 8
  store %struct.stub_manager* %0, %struct.stub_manager** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call %struct.ifstub* @stub_manager_ipid_to_ifstub(%struct.stub_manager* %10, i32* %11)
  store %struct.ifstub* %12, %struct.ifstub** %9, align 8
  %13 = icmp ne %struct.ifstub* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %41

15:                                               ; preds = %4
  %16 = load %struct.ifstub*, %struct.ifstub** %9, align 8
  %17 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MSHLFLAGS_TABLEWEAK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %32

23:                                               ; preds = %15
  %24 = load %struct.ifstub*, %struct.ifstub** %9, align 8
  %25 = getelementptr inbounds %struct.ifstub, %struct.ifstub* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MSHLFLAGS_TABLESTRONG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %23
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.stub_manager*, %struct.stub_manager** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @stub_manager_ext_release(%struct.stub_manager* %33, i32 %34, i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %32, %14
  ret void
}

declare dso_local %struct.ifstub* @stub_manager_ipid_to_ifstub(%struct.stub_manager*, i32*) #1

declare dso_local i32 @stub_manager_ext_release(%struct.stub_manager*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
