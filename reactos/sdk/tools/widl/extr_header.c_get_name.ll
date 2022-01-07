; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.c_get_name.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_header.c_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@get_name.buffer = internal global [256 x i8] zeroinitializer, align 16
@ATTR_PROPGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"get_\00", align 1
@ATTR_PROPPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"put_\00", align 1
@ATTR_PROPPUTREF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"putref_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_name(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ATTR_PROPGET, align 4
  %7 = call i64 @is_attr(i32 %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @get_name.buffer, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ATTR_PROPPUT, align 4
  %16 = call i64 @is_attr(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @get_name.buffer, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %31

20:                                               ; preds = %11
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ATTR_PROPPUTREF, align 4
  %25 = call i64 @is_attr(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @get_name.buffer, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %30

29:                                               ; preds = %20
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @get_name.buffer, i64 0, i64 0), align 16
  br label %30

30:                                               ; preds = %29, %27
  br label %31

31:                                               ; preds = %30, %18
  br label %32

32:                                               ; preds = %31, %9
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @get_name.buffer, i64 0, i64 0), i32 %35)
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @get_name.buffer, i64 0, i64 0)
}

declare dso_local i64 @is_attr(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
