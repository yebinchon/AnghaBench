; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_llex.c_read_numeral.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_llex.c_read_numeral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"Ee\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Xx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Pp\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"+-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_11__*)* @read_numeral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_numeral(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @lisdigit(i32 %12)
  %14 = call i32 @lua_assert(i32 %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = call i32 @save_and_next(%struct.TYPE_12__* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 48
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = call i64 @check_next(%struct.TYPE_12__* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %24

24:                                               ; preds = %23, %19, %2
  br label %25

25:                                               ; preds = %48, %24
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @check_next(%struct.TYPE_12__* %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = call i64 @check_next(%struct.TYPE_12__* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @lisxdigit(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %33
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = call i32 @save_and_next(%struct.TYPE_12__* %45)
  br label %48

47:                                               ; preds = %39
  br label %49

48:                                               ; preds = %44
  br label %25

49:                                               ; preds = %47
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = call i32 @save(%struct.TYPE_12__* %50, i8 signext 0)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @buffreplace(%struct.TYPE_12__* %52, i8 signext 46, i32 %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = call i32 @buff2d(i32 %59, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %49
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = call i32 @trydecpoint(%struct.TYPE_12__* %65, %struct.TYPE_11__* %66)
  br label %68

68:                                               ; preds = %64, %49
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @lisdigit(i32) #1

declare dso_local i32 @save_and_next(%struct.TYPE_12__*) #1

declare dso_local i64 @check_next(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @lisxdigit(i32) #1

declare dso_local i32 @save(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @buffreplace(%struct.TYPE_12__*, i8 signext, i32) #1

declare dso_local i32 @buff2d(i32, i32*) #1

declare dso_local i32 @trydecpoint(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
