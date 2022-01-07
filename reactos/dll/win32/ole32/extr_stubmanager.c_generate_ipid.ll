; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_generate_ipid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_stubmanager.c_generate_ipid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_manager = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [42 x i8] c"couldn't create IPID for stub manager %p\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stub_manager*, %struct.TYPE_7__*)* @generate_ipid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_ipid(%struct.stub_manager* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stub_manager*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store %struct.stub_manager* %0, %struct.stub_manager** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %8 = call i32 @UuidCreate(%struct.TYPE_7__* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @FAILED(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %14 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.stub_manager* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = call i32 @UuidCreateNil(%struct.TYPE_7__* %15)
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %20 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = call i32 @InterlockedIncrement(i32* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.stub_manager*, %struct.stub_manager** %4, align 8
  %27 = getelementptr inbounds %struct.stub_manager, %struct.stub_manager* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = call i64 (...) @GetCurrentProcessId()
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @S_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %18, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @UuidCreate(%struct.TYPE_7__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, %struct.stub_manager*) #1

declare dso_local i32 @UuidCreateNil(%struct.TYPE_7__*) #1

declare dso_local i32 @InterlockedIncrement(i32*) #1

declare dso_local i64 @GetCurrentProcessId(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
