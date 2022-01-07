; ModuleID = '/home/carl/AnghaBench/vlc/test/src/misc/extr_variables.c_test_address.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/misc/extr_variables.c_test_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i64 }

@VAR_COUNT = common dso_local global i32 0, align 4
@psz_var_name = common dso_local global i32* null, align 8
@VLC_VAR_ADDRESS = common dso_local global i32 0, align 4
@var_value = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_address(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32, i32* @VAR_COUNT, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %27, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @VAR_COUNT, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i32*, i32** %2, align 8
  %20 = load i32*, i32** @psz_var_name, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VLC_VAR_ADDRESS, align 4
  %26 = call i32 @var_Create(i32* %19, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %14

30:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %57, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @VAR_COUNT, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %13, i64 %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @var_value, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i8* %38, i8** %43, align 8
  %44 = load i32*, i32** %2, align 8
  %45 = load i32*, i32** @psz_var_name, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @var_value, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @var_SetAddress(i32* %44, i32 %49, i8* %55)
  br label %57

57:                                               ; preds = %35
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %31

60:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %85, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @VAR_COUNT, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load i32*, i32** %2, align 8
  %67 = load i32*, i32** @psz_var_name, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @var_Get(i32* %66, i32 %71, %struct.TYPE_4__* %8)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @var_value, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp eq i8* %75, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  br label %85

85:                                               ; preds = %65
  %86 = load i32, i32* %7, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %61

88:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %101, %88
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @VAR_COUNT, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load i32*, i32** %2, align 8
  %95 = load i32*, i32** @psz_var_name, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @var_Destroy(i32* %94, i32 %99)
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %9, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %89

104:                                              ; preds = %89
  %105 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %105)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @var_Create(i32*, i32, i32) #2

declare dso_local i32 @var_SetAddress(i32*, i32, i8*) #2

declare dso_local i32 @var_Get(i32*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @var_Destroy(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
