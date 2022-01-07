; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_secure.c_sec_process_mcs_data.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_secure.c_sec_process_mcs_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32* }

@.str = private unnamed_addr constant [19 x i8] c"response tag 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sec_process_mcs_data(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = call i32 @in_uint8s(%struct.TYPE_8__* %9, i32 21)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @in_uint8(%struct.TYPE_8__* %11, i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, 128
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @in_uint8(%struct.TYPE_8__* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  br label %22

22:                                               ; preds = %61, %21
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ult i32* %25, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %22
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @in_uint16_le(%struct.TYPE_8__* %31, i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @in_uint16_le(%struct.TYPE_8__* %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp sle i32 %37, 4
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %65

40:                                               ; preds = %30
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = getelementptr inbounds i32, i32* %46, i64 -4
  store i32* %47, i32** %7, align 8
  %48 = load i32, i32* %5, align 4
  switch i32 %48, label %58 [
    i32 128, label %49
    i32 129, label %53
    i32 130, label %57
  ]

49:                                               ; preds = %40
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = call i32 @sec_process_srv_info(i32* %50, %struct.TYPE_8__* %51)
  br label %61

53:                                               ; preds = %40
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = call i32 @sec_process_crypt_info(i32* %54, %struct.TYPE_8__* %55)
  br label %61

57:                                               ; preds = %40
  br label %61

58:                                               ; preds = %40
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @unimpl(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %57, %53, %49
  %62 = load i32*, i32** %7, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  br label %22

65:                                               ; preds = %39, %22
  ret void
}

declare dso_local i32 @in_uint8s(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @in_uint8(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @in_uint16_le(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sec_process_srv_info(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @sec_process_crypt_info(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
