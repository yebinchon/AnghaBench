; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/samsrv/extr_database.c_SampGetObjectAttributeString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/samsrv/extr_database.c_SampGetObjectAttributeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i8*, i8* }

@STATUS_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Status 0x%08lx\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Length: %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SampGetObjectAttributeString(i32 %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @SampGetObjectAttribute(i32 %9, i32 %10, i32* null, i32* null, i32* %7)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @NT_SUCCESS(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @STATUS_BUFFER_OVERFLOW, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %71

22:                                               ; preds = %15, %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i8* null, i8** %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i8* null, i8** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %32, i32* %8, align 4
  br label %71

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, 4
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32* @midl_user_allocate(i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %33
  %54 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %54, i32* %8, align 4
  br label %71

55:                                               ; preds = %33
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @SampGetObjectAttribute(i32 %58, i32 %59, i32* null, i32* %62, i32* %7)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @NT_SUCCESS(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %71

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %67, %53, %25, %19
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @NT_SUCCESS(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %71
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @midl_user_free(i32* %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %80, %75
  br label %88

88:                                               ; preds = %87, %71
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @SampGetObjectAttribute(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32* @midl_user_allocate(i32) #1

declare dso_local i32 @midl_user_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
