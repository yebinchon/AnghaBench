; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_typelib_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_typelib_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.entity = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@restrictedW = common dso_local global i32 0, align 4
@LIBFLAG_FRESTRICTED = common dso_local global i32 0, align 4
@controlW = common dso_local global i32 0, align 4
@LIBFLAG_FCONTROL = common dso_local global i32 0, align 4
@hiddenW = common dso_local global i32 0, align 4
@LIBFLAG_FHIDDEN = common dso_local global i32 0, align 4
@hasdiskimageW = common dso_local global i32 0, align 4
@LIBFLAG_FHASDISKIMAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unknown flags value %wZ\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.entity*)* @parse_typelib_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_typelib_flags(%struct.TYPE_8__* %0, %struct.entity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.entity*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.entity* %1, %struct.entity** %5, align 8
  %11 = load %struct.entity*, %struct.entity** %5, align 8
  %12 = getelementptr inbounds %struct.entity, %struct.entity* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %116, %2
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %121

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %41, %25
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 44
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %33, %37
  br label %39

39:                                               ; preds = %32, %27
  %40 = phi i1 [ false, %27 ], [ %38, %32 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %7, align 8
  br label %27

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* @restrictedW, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @strncmpiW(i8* %45, i32 %46, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %44
  %56 = load i32, i32* @LIBFLAG_FRESTRICTED, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %116

60:                                               ; preds = %44
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* @controlW, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @strncmpiW(i8* %61, i32 %62, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %60
  %72 = load i32, i32* @LIBFLAG_FCONTROL, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %115

76:                                               ; preds = %60
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* @hiddenW, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @strncmpiW(i8* %77, i32 %78, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %76
  %88 = load i32, i32* @LIBFLAG_FHIDDEN, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %114

92:                                               ; preds = %76
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* @hasdiskimageW, align 4
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  %101 = call i32 @strncmpiW(i8* %93, i32 %94, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %92
  %104 = load i32, i32* @LIBFLAG_FHASDISKIMAGE, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %104
  store i32 %107, i32* %105, align 4
  br label %113

108:                                              ; preds = %92
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %110 = call i32 @xmlstr2unicode(%struct.TYPE_8__* %109)
  store i32 %110, i32* %10, align 4
  %111 = call i32 @DPRINT1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %10)
  %112 = load i32, i32* @FALSE, align 4
  store i32 %112, i32* %3, align 4
  br label %123

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %87
  br label %115

115:                                              ; preds = %114, %71
  br label %116

116:                                              ; preds = %115, %55
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %19

121:                                              ; preds = %19
  %122 = load i32, i32* @TRUE, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %121, %108
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @strncmpiW(i8*, i32, i32) #1

declare dso_local i32 @xmlstr2unicode(%struct.TYPE_8__*) #1

declare dso_local i32 @DPRINT1(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
