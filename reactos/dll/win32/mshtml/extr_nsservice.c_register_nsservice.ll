; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsservice.c_register_nsservice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsservice.c_register_nsservice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@NS_PROMPTSERVICE_CID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Prompt Service\00", align 1
@NS_PROMPTSERVICE_CONTRACTID = common dso_local global i32 0, align 4
@nsPromptServiceFactory = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"RegisterFactory failed: %08x\0A\00", align 1
@NS_TOOLTIPTEXTPROVIDER_CID = common dso_local global i32 0, align 4
@NS_TOOLTIPTEXTPROVIDER_CLASSNAME = common dso_local global i8* null, align 8
@NS_TOOLTIPTEXTPROVIDER_CONTRACTID = common dso_local global i32 0, align 4
@nsTooltipTextFactory = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @register_nsservice(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @NS_PROMPTSERVICE_CONTRACTID, align 4
  %8 = call i32 @nsIComponentRegistrar_RegisterFactory(i32* %6, i32* @NS_PROMPTSERVICE_CID, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %7, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @nsPromptServiceFactory, i32 0, i32 0))
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @NS_FAILED(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i8*, i8** @NS_TOOLTIPTEXTPROVIDER_CLASSNAME, align 8
  %18 = load i32, i32* @NS_TOOLTIPTEXTPROVIDER_CONTRACTID, align 4
  %19 = call i32 @nsIComponentRegistrar_RegisterFactory(i32* %16, i32* @NS_TOOLTIPTEXTPROVIDER_CID, i8* %17, i32 %18, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @nsTooltipTextFactory, i32 0, i32 0))
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @NS_FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %15
  ret void
}

declare dso_local i32 @nsIComponentRegistrar_RegisterFactory(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i64 @NS_FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
