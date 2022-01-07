; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_bt.c_do_bt.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_bt.c_do_bt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Option = type { i8*, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.Option.0 = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"dbhdr\00", align 1
@BT_INFO_HDRDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@BT_INFO_FILENAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"block_freelist\00", align 1
@BT_INFO_BLOCK_FREELIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"page_freelist\00", align 1
@BT_INFO_PAGE_FREELIST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@BT_INFO_PAGEDUMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"page_ascii\00", align 1
@BT_INFO_PAGEDUMP_ASCII = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"leaks\00", align 1
@BT_INFO_PAGE_LEAKS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"FILENAME OPTION ...\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"FILENAME %s %s\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"PGNO\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE4_OK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"sqlite4BtNew() failed: %d\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"sqlite4BtOpen() failed: %d\00", align 1
@BT_CONTROL_INFO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"sqlite4BtControl() failed: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_bt(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [9 x %struct.Option], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = getelementptr inbounds [9 x %struct.Option], [9 x %struct.Option]* %6, i64 0, i64 0
  %14 = getelementptr inbounds %struct.Option, %struct.Option* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %14, align 16
  %15 = getelementptr inbounds %struct.Option, %struct.Option* %13, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.Option, %struct.Option* %13, i32 0, i32 2
  %17 = load i32, i32* @BT_INFO_HDRDUMP, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.Option, %struct.Option* %13, i64 1
  %19 = getelementptr inbounds %struct.Option, %struct.Option* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 16
  %20 = getelementptr inbounds %struct.Option, %struct.Option* %18, i32 0, i32 1
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.Option, %struct.Option* %18, i32 0, i32 2
  %22 = load i32, i32* @BT_INFO_FILENAME, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.Option, %struct.Option* %18, i64 1
  %24 = getelementptr inbounds %struct.Option, %struct.Option* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 16
  %25 = getelementptr inbounds %struct.Option, %struct.Option* %23, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.Option, %struct.Option* %23, i32 0, i32 2
  %27 = load i32, i32* @BT_INFO_BLOCK_FREELIST, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.Option, %struct.Option* %23, i64 1
  %29 = getelementptr inbounds %struct.Option, %struct.Option* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %29, align 16
  %30 = getelementptr inbounds %struct.Option, %struct.Option* %28, i32 0, i32 1
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.Option, %struct.Option* %28, i32 0, i32 2
  %32 = load i32, i32* @BT_INFO_PAGE_FREELIST, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.Option, %struct.Option* %28, i64 1
  %34 = getelementptr inbounds %struct.Option, %struct.Option* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 16
  %35 = getelementptr inbounds %struct.Option, %struct.Option* %33, i32 0, i32 1
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.Option, %struct.Option* %33, i32 0, i32 2
  %37 = load i32, i32* @BT_INFO_FILENAME, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.Option, %struct.Option* %33, i64 1
  %39 = getelementptr inbounds %struct.Option, %struct.Option* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %39, align 16
  %40 = getelementptr inbounds %struct.Option, %struct.Option* %38, i32 0, i32 1
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.Option, %struct.Option* %38, i32 0, i32 2
  %42 = load i32, i32* @BT_INFO_PAGEDUMP, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.Option, %struct.Option* %38, i64 1
  %44 = getelementptr inbounds %struct.Option, %struct.Option* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %44, align 16
  %45 = getelementptr inbounds %struct.Option, %struct.Option* %43, i32 0, i32 1
  store i32 1, i32* %45, align 8
  %46 = getelementptr inbounds %struct.Option, %struct.Option* %43, i32 0, i32 2
  %47 = load i32, i32* @BT_INFO_PAGEDUMP_ASCII, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds %struct.Option, %struct.Option* %43, i64 1
  %49 = getelementptr inbounds %struct.Option, %struct.Option* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %49, align 16
  %50 = getelementptr inbounds %struct.Option, %struct.Option* %48, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = getelementptr inbounds %struct.Option, %struct.Option* %48, i32 0, i32 2
  %52 = load i32, i32* @BT_INFO_PAGE_LEAKS, align 4
  store i32 %52, i32* %51, align 4
  %53 = getelementptr inbounds %struct.Option, %struct.Option* %48, i64 1
  %54 = getelementptr inbounds %struct.Option, %struct.Option* %53, i32 0, i32 0
  store i8* null, i8** %54, align 16
  %55 = getelementptr inbounds %struct.Option, %struct.Option* %53, i32 0, i32 1
  store i32 0, i32* %55, align 8
  %56 = getelementptr inbounds %struct.Option, %struct.Option* %53, i32 0, i32 2
  store i32 0, i32* %56, align 4
  store i32* null, i32** %12, align 8
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %61

59:                                               ; preds = %2
  %60 = call i32 @testPrintUsage(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %155

61:                                               ; preds = %2
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %11, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %10, align 8
  %68 = getelementptr inbounds [9 x %struct.Option], [9 x %struct.Option]* %6, i64 0, i64 0
  %69 = bitcast %struct.Option* %68 to %struct.Option.0*
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @testArgSelect(%struct.Option.0* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %70, i32* %7)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %155

76:                                               ; preds = %61
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [9 x %struct.Option], [9 x %struct.Option]* %6, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.Option, %struct.Option* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 2, %82
  %84 = icmp ne i32 %77, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %76
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [9 x %struct.Option], [9 x %struct.Option]* %6, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.Option, %struct.Option* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %95 = call i32 @testPrintFUsage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %86, i8* %94)
  store i32 -4, i32* %3, align 4
  br label %155

96:                                               ; preds = %76
  %97 = call i32 (...) @sqlite4_env_default()
  %98 = call i32 @sqlite4BtNew(i32 %97, i32 0, i32** %12)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @SQLITE4_OK, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @testPrintError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %103)
  store i32 -2, i32* %3, align 4
  br label %155

105:                                              ; preds = %96
  %106 = load i32*, i32** %12, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @sqlite4BtOpen(i32* %106, i8* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @SQLITE4_OK, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @testPrintError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %113)
  store i32 -3, i32* %3, align 4
  br label %155

115:                                              ; preds = %105
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [9 x %struct.Option], [9 x %struct.Option]* %6, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.Option, %struct.Option* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %120, i32* %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i64 0, i64* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %124 = call i32 @sqlite4_buffer_init(%struct.TYPE_7__* %123, i32 0)
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [9 x %struct.Option], [9 x %struct.Option]* %6, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.Option, %struct.Option* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %115
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @atoi(i8* %134)
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i64 %135, i64* %136, align 8
  br label %137

137:                                              ; preds = %131, %115
  %138 = load i32*, i32** %12, align 8
  %139 = load i32, i32* @BT_CONTROL_INFO, align 4
  %140 = call i32 @sqlite4BtControl(i32* %138, i32 %139, %struct.TYPE_6__* %9)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @SQLITE4_OK, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @testPrintError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %145)
  store i32 -4, i32* %3, align 4
  br label %155

147:                                              ; preds = %137
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i8*
  %152 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %151)
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %154 = call i32 @sqlite4_buffer_clear(%struct.TYPE_7__* %153)
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %147, %144, %112, %102, %85, %74, %59
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @testPrintUsage(i8*) #1

declare dso_local i32 @testArgSelect(%struct.Option.0*, i8*, i8*, i32*) #1

declare dso_local i32 @testPrintFUsage(i8*, i8*, i8*) #1

declare dso_local i32 @sqlite4BtNew(i32, i32, i32**) #1

declare dso_local i32 @sqlite4_env_default(...) #1

declare dso_local i32 @testPrintError(i8*, i32) #1

declare dso_local i32 @sqlite4BtOpen(i32*, i8*) #1

declare dso_local i32 @sqlite4_buffer_init(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @sqlite4BtControl(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @sqlite4_buffer_clear(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
