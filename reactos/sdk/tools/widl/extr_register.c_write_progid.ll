; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_register.c_write_progid.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_register.c_write_progid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@ATTR_UUID = common dso_local global i32 0, align 4
@ATTR_HELPSTRING = common dso_local global i32 0, align 4
@ATTR_PROGID = common dso_local global i32 0, align 4
@ATTR_VIPROGID = common dso_local global i32 0, align 4
@indent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"'%s' = s '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"CLSID = s '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"CurVer = s '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @write_progid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_progid(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ATTR_UUID, align 4
  %12 = call i8* @get_attrp(i32 %10, i32 %11)
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %4, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ATTR_HELPSTRING, align 4
  %18 = call i8* @get_attrp(i32 %16, i32 %17)
  store i8* %18, i8** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ATTR_PROGID, align 4
  %23 = call i8* @get_attrp(i32 %21, i32 %22)
  store i8* %23, i8** %6, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ATTR_VIPROGID, align 4
  %28 = call i8* @get_attrp(i32 %26, i32 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

32:                                               ; preds = %1
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %5, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load i32, i32* @indent, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 (i32, i8*, ...) @put_str(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %44, i8* %45)
  %47 = load i32, i32* @indent, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @indent, align 4
  %49 = call i32 (i32, i8*, ...) @put_str(i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @indent, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @format_uuid(i32* %51)
  %53 = call i32 (i32, i8*, ...) @put_str(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @indent, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* @indent, align 4
  %56 = call i32 (i32, i8*, ...) @put_str(i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %42, %39
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %87

60:                                               ; preds = %57
  %61 = load i32, i32* @indent, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 (i32, i8*, ...) @put_str(i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %62, i8* %63)
  %65 = load i32, i32* @indent, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @indent, align 4
  %67 = call i32 (i32, i8*, ...) @put_str(i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @indent, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @format_uuid(i32* %69)
  %71 = call i32 (i32, i8*, ...) @put_str(i32 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i8*, i8** %6, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %60
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = call i64 @strcmp(i8* %75, i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @indent, align 4
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 (i32, i8*, ...) @put_str(i32 %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %79, %74, %60
  %84 = load i32, i32* @indent, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* @indent, align 4
  %86 = call i32 (i32, i8*, ...) @put_str(i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %57
  store i32 1, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %31
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i8* @get_attrp(i32, i32) #1

declare dso_local i32 @put_str(i32, i8*, ...) #1

declare dso_local i32 @format_uuid(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
