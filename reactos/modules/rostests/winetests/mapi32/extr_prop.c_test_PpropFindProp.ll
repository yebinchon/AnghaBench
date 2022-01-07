; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_test_PpropFindProp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_test_PpropFindProp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@ptTypes = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [50 x i8] c"PpropFindProp[%d]: Didn't find existing property\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"PpropFindProp[%d]: Found nonexistent property\0A\00", align 1
@PT_I2 = common dso_local global i32 0, align 4
@PT_UNSPECIFIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"PpropFindProp[UNSPECIFIED]: Matched on different id\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"PpropFindProp[UNSPECIFIED]: Didn't match id\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PpropFindProp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PpropFindProp() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %53, %0
  %5 = load i64, i64* %3, align 8
  %6 = load i8**, i8*** @ptTypes, align 8
  %7 = call i64 @ARRAY_SIZE(i8** %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %56

9:                                                ; preds = %4
  %10 = load i8**, i8*** @ptTypes, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i8**, i8*** @ptTypes, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call %struct.TYPE_4__* @pPpropFindProp(%struct.TYPE_4__* %1, i32 1, i8* %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %2, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, %1
  %22 = zext i1 %21 to i32
  %23 = load i8**, i8*** @ptTypes, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %9
  %31 = load i8**, i8*** @ptTypes, align 8
  %32 = load i64, i64* %3, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  br label %42

36:                                               ; preds = %9
  %37 = load i8**, i8*** @ptTypes, align 8
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 1
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i8* [ %35, %30 ], [ %41, %36 ]
  %44 = call %struct.TYPE_4__* @pPpropFindProp(%struct.TYPE_4__* %1, i32 1, i8* %43)
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %2, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = icmp eq %struct.TYPE_4__* %45, null
  %47 = zext i1 %46 to i32
  %48 = load i8**, i8*** @ptTypes, align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %42
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %3, align 8
  br label %4

56:                                               ; preds = %4
  %57 = load i32, i32* @PT_I2, align 4
  %58 = call i8* @PROP_TAG(i32 %57, i32 1)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* @PT_UNSPECIFIED, align 4
  %61 = call i8* @PROP_TAG(i32 %60, i32 0)
  %62 = call %struct.TYPE_4__* @pPpropFindProp(%struct.TYPE_4__* %1, i32 1, i8* %61)
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %2, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %64 = icmp eq %struct.TYPE_4__* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @PT_UNSPECIFIED, align 4
  %68 = call i8* @PROP_TAG(i32 %67, i32 1)
  %69 = call %struct.TYPE_4__* @pPpropFindProp(%struct.TYPE_4__* %1, i32 1, i8* %68)
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %2, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = icmp eq %struct.TYPE_4__* %70, %1
  %72 = zext i1 %71 to i32
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local %struct.TYPE_4__* @pPpropFindProp(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i8* @PROP_TAG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
