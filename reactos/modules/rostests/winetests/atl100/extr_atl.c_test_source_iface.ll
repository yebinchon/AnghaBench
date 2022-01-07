; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl100/extr_atl.c_test_source_iface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl100/extr_atl.c_test_source_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@support_classinfo2 = common dso_local global i32 0, align 4
@Dispatch = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"AtlGetObjectSourceInterface failed: %08x\0A\00", align 1
@LIBID_MSHTML = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"libid = %s\0A\00", align 1
@DIID_DispHTMLBody = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"iid = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"ver = %d.%d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@CLSID_HTMLDocument = common dso_local global i32 0, align 4
@persist_clsid = common dso_local global i32 0, align 4
@DIID_HTMLDocumentEvents = common dso_local global i32 0, align 4
@CLSID_HTMLStyle = common dso_local global i32 0, align 4
@IID_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_source_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_source_iface() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @TRUE, align 4
  store i32 %6, i32* @support_classinfo2, align 4
  store i16 -8531, i16* %2, align 2
  store i16 -8531, i16* %1, align 2
  %7 = call i32 @AtlGetObjectSourceInterface(i32* @Dispatch, i32* %3, i32* %4, i16* %1, i16* %2)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @S_OK, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %5, align 4
  %13 = trunc i32 %12 to i16
  %14 = call i32 (i32, i8*, i16, ...) @ok(i32 %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i16 zeroext %13)
  %15 = call i32 @IsEqualGUID(i32* %3, i32* @LIBID_MSHTML)
  %16 = call i32 @wine_dbgstr_guid(i32* %3)
  %17 = trunc i32 %16 to i16
  %18 = call i32 (i32, i8*, i16, ...) @ok(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %17)
  %19 = call i32 @IsEqualGUID(i32* %4, i32* @DIID_DispHTMLBody)
  %20 = call i32 @wine_dbgstr_guid(i32* %4)
  %21 = trunc i32 %20 to i16
  %22 = call i32 (i32, i8*, i16, ...) @ok(i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %21)
  %23 = load i16, i16* %1, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %30

26:                                               ; preds = %0
  %27 = load i16, i16* %2, align 2
  %28 = zext i16 %27 to i32
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %26, %0
  %31 = phi i1 [ false, %0 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = load i16, i16* %1, align 2
  %34 = load i16, i16* %2, align 2
  %35 = zext i16 %34 to i32
  %36 = call i32 (i32, i8*, i16, ...) @ok(i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %33, i32 %35)
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* @support_classinfo2, align 4
  %38 = load i32, i32* @CLSID_HTMLDocument, align 4
  store i32 %38, i32* @persist_clsid, align 4
  store i16 -8531, i16* %2, align 2
  store i16 -8531, i16* %1, align 2
  %39 = call i32 @AtlGetObjectSourceInterface(i32* @Dispatch, i32* %3, i32* %4, i16* %1, i16* %2)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @S_OK, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %5, align 4
  %45 = trunc i32 %44 to i16
  %46 = call i32 (i32, i8*, i16, ...) @ok(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i16 zeroext %45)
  %47 = call i32 @IsEqualGUID(i32* %3, i32* @LIBID_MSHTML)
  %48 = call i32 @wine_dbgstr_guid(i32* %3)
  %49 = trunc i32 %48 to i16
  %50 = call i32 (i32, i8*, i16, ...) @ok(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %49)
  %51 = call i32 @IsEqualGUID(i32* %4, i32* @DIID_HTMLDocumentEvents)
  %52 = call i32 @wine_dbgstr_guid(i32* %4)
  %53 = trunc i32 %52 to i16
  %54 = call i32 (i32, i8*, i16, ...) @ok(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %53)
  %55 = load i16, i16* %1, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp eq i32 %56, 4
  br i1 %57, label %58, label %62

58:                                               ; preds = %30
  %59 = load i16, i16* %2, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp eq i32 %60, 0
  br label %62

62:                                               ; preds = %58, %30
  %63 = phi i1 [ false, %30 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = load i16, i16* %1, align 2
  %66 = load i16, i16* %2, align 2
  %67 = zext i16 %66 to i32
  %68 = call i32 (i32, i8*, i16, ...) @ok(i32 %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %65, i32 %67)
  %69 = load i32, i32* @CLSID_HTMLStyle, align 4
  store i32 %69, i32* @persist_clsid, align 4
  store i16 -8531, i16* %2, align 2
  store i16 -8531, i16* %1, align 2
  %70 = call i32 @AtlGetObjectSourceInterface(i32* @Dispatch, i32* %3, i32* %4, i16* %1, i16* %2)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @S_OK, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %5, align 4
  %76 = trunc i32 %75 to i16
  %77 = call i32 (i32, i8*, i16, ...) @ok(i32 %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i16 zeroext %76)
  %78 = call i32 @IsEqualGUID(i32* %3, i32* @LIBID_MSHTML)
  %79 = call i32 @wine_dbgstr_guid(i32* %3)
  %80 = trunc i32 %79 to i16
  %81 = call i32 (i32, i8*, i16, ...) @ok(i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %80)
  %82 = call i32 @IsEqualGUID(i32* %4, i32* @IID_NULL)
  %83 = call i32 @wine_dbgstr_guid(i32* %4)
  %84 = trunc i32 %83 to i16
  %85 = call i32 (i32, i8*, i16, ...) @ok(i32 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %84)
  %86 = load i16, i16* %1, align 2
  %87 = zext i16 %86 to i32
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %93

89:                                               ; preds = %62
  %90 = load i16, i16* %2, align 2
  %91 = zext i16 %90 to i32
  %92 = icmp eq i32 %91, 0
  br label %93

93:                                               ; preds = %89, %62
  %94 = phi i1 [ false, %62 ], [ %92, %89 ]
  %95 = zext i1 %94 to i32
  %96 = load i16, i16* %1, align 2
  %97 = load i16, i16* %2, align 2
  %98 = zext i16 %97 to i32
  %99 = call i32 (i32, i8*, i16, ...) @ok(i32 %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %96, i32 %98)
  ret void
}

declare dso_local i32 @AtlGetObjectSourceInterface(i32*, i32*, i32*, i16*, i16*) #1

declare dso_local i32 @ok(i32, i8*, i16 zeroext, ...) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
