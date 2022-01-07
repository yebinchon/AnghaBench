; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_OleCommandTarget_fail.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_OleCommandTarget_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@OLECMDID_OPEN = common dso_local global i32 0, align 4
@OLECMDID_GETPRINTTEMPLATE = common dso_local global i32 0, align 4
@IID_IOleCommandTarget = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"QueryInterface(IIDIOleCommandTarget failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"QueryStatus failed: %08x\0A\00", align 1
@QueryStatus_OPEN = common dso_local global i32 0, align 4
@OLECMDERR_E_NOTSUPPORTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"QueryStatus failed: %08x, expected OLECMDERR_E_NOTSUPPORTED\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"cmd[0].cmdID=%d, expected OLECMDID_GETPRINTTEMPLATE+1\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"cmd[0].cmdf=%x, expected 0\0A\00", align 1
@OLECMDF_SUPPORTED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"cmd[1].cmdf=%x, expected OLECMDF_SUPPORTED\0A\00", align 1
@IID_IHTMLDocument2 = common dso_local global i32 0, align 4
@OLECMDERR_E_UNKNOWNGROUP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [61 x i8] c"QueryStatus failed: %08x, expected OLECMDERR_E_UNKNOWNGROUP\0A\00", align 1
@expect_cmds = common dso_local global i32* null, align 8
@OLECMDID_UPDATECOMMANDS = common dso_local global i32 0, align 4
@OLECMDEXECOPT_DODEFAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"Exec failed: %08x, expected OLECMDERR_E_NOTSUPPORTED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_OleCommandTarget_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_OleCommandTarget_fail(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [2 x %struct.TYPE_3__], align 16
  store i32* %0, i32** %2, align 8
  %7 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* @OLECMDID_OPEN, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 61680, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* @OLECMDID_GETPRINTTEMPLATE, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 61680, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = bitcast i32** %3 to i8**
  %22 = call i64 @IHTMLDocument2_QueryInterface(i32* %20, i32* @IID_IOleCommandTarget, i8** %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @FAILED(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %135

33:                                               ; preds = %1
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @IOleCommandTarget_QueryStatus(i32* %34, i32* null, i32 0, %struct.TYPE_3__* null, i32* null)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @QueryStatus_OPEN, align 4
  %43 = call i32 @SET_EXPECT(i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %46 = call i64 @IOleCommandTarget_QueryStatus(i32* %44, i32* null, i32 2, %struct.TYPE_3__* %45, i32* null)
  store i64 %46, i64* %5, align 8
  %47 = load i32, i32* @QueryStatus_OPEN, align 4
  %48 = call i32 @CHECK_CALLED(i32 %47)
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @OLECMDERR_E_NOTSUPPORTED, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @OLECMDID_GETPRINTTEMPLATE, align 4
  %59 = add nsw i32 %58, 1
  %60 = icmp eq i32 %57, %59
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  %67 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 16
  %75 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %74)
  %76 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 16
  %79 = load i64, i64* @OLECMDF_SUPPORTED, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 %84)
  %86 = load i32*, i32** %3, align 8
  %87 = getelementptr inbounds [2 x %struct.TYPE_3__], [2 x %struct.TYPE_3__]* %6, i64 0, i64 0
  %88 = call i64 @IOleCommandTarget_QueryStatus(i32* %86, i32* @IID_IHTMLDocument2, i32 2, %struct.TYPE_3__* %87, i32* null)
  store i64 %88, i64* %5, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @OLECMDERR_E_UNKNOWNGROUP, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i64 %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %118, %33
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @OLECMDID_GETPRINTTEMPLATE, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %121

99:                                               ; preds = %95
  %100 = load i32*, i32** @expect_cmds, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %99
  %107 = load i32*, i32** %3, align 8
  %108 = load i32, i32* @OLECMDID_UPDATECOMMANDS, align 4
  %109 = load i32, i32* @OLECMDEXECOPT_DODEFAULT, align 4
  %110 = call i64 @IOleCommandTarget_Exec(i32* %107, i32* null, i32 %108, i32 %109, i32* null, i32* null)
  store i64 %110, i64* %5, align 8
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* @OLECMDERR_E_NOTSUPPORTED, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = load i64, i64* %5, align 8
  %116 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i64 %115)
  br label %117

117:                                              ; preds = %106, %99
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %95

121:                                              ; preds = %95
  %122 = load i32*, i32** %3, align 8
  %123 = load i32, i32* @OLECMDID_GETPRINTTEMPLATE, align 4
  %124 = add nsw i32 %123, 1
  %125 = load i32, i32* @OLECMDEXECOPT_DODEFAULT, align 4
  %126 = call i64 @IOleCommandTarget_Exec(i32* %122, i32* null, i32 %124, i32 %125, i32* null, i32* null)
  store i64 %126, i64* %5, align 8
  %127 = load i64, i64* %5, align 8
  %128 = load i64, i64* @OLECMDERR_E_NOTSUPPORTED, align 8
  %129 = icmp eq i64 %127, %128
  %130 = zext i1 %129 to i32
  %131 = load i64, i64* %5, align 8
  %132 = call i32 @ok(i32 %130, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i64 %131)
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @IOleCommandTarget_Release(i32* %133)
  br label %135

135:                                              ; preds = %121, %32
  ret void
}

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IOleCommandTarget_QueryStatus(i32*, i32*, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i64 @IOleCommandTarget_Exec(i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @IOleCommandTarget_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
