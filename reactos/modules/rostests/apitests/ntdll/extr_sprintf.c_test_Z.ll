; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_sprintf.c_test_Z.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_sprintf.c_test_Z.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Test\00Hallo\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%Z\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Tes\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i32] [i32 84, i32 101, i32 115, i32 116, i32 0, i32 72, i32 97, i32 108, i32 108, i32 111, i32 0], align 4
@.str.6 = private unnamed_addr constant [5 x i32] [i32 116, i32 101, i32 115, i32 116, i32 0], align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"%Z %u%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_Z() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 4, i32* %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 5, i32* %6, align 4
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %8 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %2)
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %10 = call i32 @ok_str(i8* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 8, i32* %11, align 8
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %13 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %2)
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %15 = call i32 @ok_str(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 3, i32* %16, align 8
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %18 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %2)
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %20 = call i32 @ok_str(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %23 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %2)
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %25 = call i32 @ok_str(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %27 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* null)
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %29 = call i32 @ok_str(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* bitcast ([11 x i32]* @.str.5 to i8*), i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 8, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 10, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* bitcast ([5 x i32]* @.str.6 to i8*), i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i32 12, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 15, i32* %35, align 4
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %37 = call i32 @_snprintf(i8* %36, i32 127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_4__* %2, i32 1, i32 0)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @ok_int(i32 %38, i32 15)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @ok_str(i8*, i8*) #1

declare dso_local i32 @_snprintf(i8*, i32, i8*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ok_int(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
