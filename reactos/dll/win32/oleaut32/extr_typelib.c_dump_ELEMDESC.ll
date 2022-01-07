; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_dump_ELEMDESC.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_dump_ELEMDESC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"\09\09tdesc.vartype %d (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\09\09u.paramdesc.wParamFlags\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" PARAMFLAGS_NONE\00", align 1
@PARAMFLAG_FIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c" PARAMFLAG_FIN\00", align 1
@PARAMFLAG_FOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c" PARAMFLAG_FOUT\00", align 1
@PARAMFLAG_FLCID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c" PARAMFLAG_FLCID\00", align 1
@PARAMFLAG_FRETVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c" PARAMFLAG_FRETVAL\00", align 1
@PARAMFLAG_FOPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c" PARAMFLAG_FOPT\00", align 1
@PARAMFLAG_FHASDEFAULT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c" PARAMFLAG_FHASDEFAULT\00", align 1
@PARAMFLAG_FHASCUSTDATA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c" PARAMFLAG_FHASCUSTDATA\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"\0A\09\09u.paramdesc.lpex %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @dump_ELEMDESC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ELEMDESC(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca [200 x i8], align 16
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %13 = call i32 @dump_TypeDesc(%struct.TYPE_9__* %11, i8* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [200 x i8], [200 x i8]* %3, i64 0, i64 0
  %19 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  %20 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @PARAMFLAG_FIN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @PARAMFLAG_FOUT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PARAMFLAG_FLCID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PARAMFLAG_FRETVAL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @PARAMFLAG_FOPT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @PARAMFLAG_FHASDEFAULT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @PARAMFLAG_FHASCUSTDATA, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @MESSAGE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %79)
  ret void
}

declare dso_local i32 @dump_TypeDesc(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @MESSAGE(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
