; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_event_trigger.c_ts_event_trigger_dropped_objects.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_event_trigger.c_ts_event_trigger_dropped_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@dropped_objects_fmgrinfo = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@T_ReturnSetInfo = common dso_local global i32 0, align 4
@SFRM_Materialize = common dso_local global i32 0, align 4
@DROPPED_OBJECTS_NATTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"table constraint\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"view\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ts_event_trigger_dropped_objects() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = call i32* (...) @CreateExecutorState()
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** @NIL, align 8
  store i32* %19, i32** %5, align 8
  %20 = load i32, i32* @InvalidOid, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @InitFunctionCallInfoData(i64 %22, i32* @dropped_objects_fmgrinfo, i32 0, i32 %20, i32* null, i32* null)
  %24 = call i32 @MemSet(%struct.TYPE_6__* %1, i32 0, i32 20)
  %25 = load i32, i32* @T_ReturnSetInfo, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 4
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @SFRM_Materialize, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @CreateExprContext(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = ptrtoint %struct.TYPE_6__* %1 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = call i32 @FunctionCallInvoke(%struct.TYPE_7__* %2)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32* @MakeSingleTupleTableSlot(i32 %36)
  store i32* %37, i32** %3, align 8
  br label %38

38:                                               ; preds = %170, %0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @tuplestore_gettupleslot(i32 %40, i32 1, i32 0, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %172

44:                                               ; preds = %38
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @ExecFetchSlotTuple(i32* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @DROPPED_OBJECTS_NATTS, align 4
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %7, align 8
  %50 = alloca i32, i64 %48, align 16
  store i64 %48, i64* %8, align 8
  %51 = load i32, i32* @DROPPED_OBJECTS_NATTS, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i32, i64 %52, align 16
  store i64 %52, i64* %9, align 8
  %54 = load i32, i32* %6, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @heap_deform_tuple(i32 %54, i32 %56, i32* %50, i32* %53)
  %58 = getelementptr inbounds i32, i32* %50, i64 0
  %59 = load i32, i32* %58, align 16
  %60 = call i32 @DatumGetObjectId(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  switch i32 %61, label %169 [
    i32 131, label %62
    i32 129, label %87
    i32 130, label %145
    i32 128, label %155
  ]

62:                                               ; preds = %44
  %63 = getelementptr inbounds i32, i32* %50, i64 6
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @TextDatumGetCString(i32 %64)
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %86

68:                                               ; preds = %62
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = getelementptr inbounds i32, i32* %50, i64 10
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @DatumGetArrayTypeP(i32 %74)
  %76 = call i32* @extract_addrnames(i32 %75)
  store i32* %76, i32** %12, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @lthird(i32* %78)
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @linitial(i32* %80)
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @lsecond(i32* %82)
  %84 = call i32 @make_event_trigger_drop_table_constraint(i32 %79, i32 %81, i32 %83)
  %85 = call i32* @lappend(i32* %77, i32 %84)
  store i32* %85, i32** %5, align 8
  br label %86

86:                                               ; preds = %72, %68, %62
  br label %170

87:                                               ; preds = %44
  %88 = getelementptr inbounds i32, i32* %50, i64 6
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @TextDatumGetCString(i32 %89)
  store i8* %90, i8** %11, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %170

94:                                               ; preds = %87
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = getelementptr inbounds i32, i32* %50, i64 10
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @DatumGetArrayTypeP(i32 %100)
  %102 = call i32* @extract_addrnames(i32 %101)
  store i32* %102, i32** %13, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @lsecond(i32* %104)
  %106 = load i32*, i32** %13, align 8
  %107 = call i32 @linitial(i32* %106)
  %108 = call i32 @make_event_trigger_drop_index(i32 %105, i32 %107)
  %109 = call i32* @lappend(i32* %103, i32 %108)
  store i32* %109, i32** %5, align 8
  br label %144

110:                                              ; preds = %94
  %111 = load i8*, i8** %11, align 8
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %110
  %115 = getelementptr inbounds i32, i32* %50, i64 10
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @DatumGetArrayTypeP(i32 %116)
  %118 = call i32* @extract_addrnames(i32 %117)
  store i32* %118, i32** %14, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 @lsecond(i32* %120)
  %122 = load i32*, i32** %14, align 8
  %123 = call i32 @linitial(i32* %122)
  %124 = call i32 @make_event_trigger_drop_table(i32 %121, i32 %123)
  %125 = call i32* @lappend(i32* %119, i32 %124)
  store i32* %125, i32** %5, align 8
  br label %143

126:                                              ; preds = %110
  %127 = load i8*, i8** %11, align 8
  %128 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %126
  %131 = getelementptr inbounds i32, i32* %50, i64 10
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @DatumGetArrayTypeP(i32 %132)
  %134 = call i32* @extract_addrnames(i32 %133)
  store i32* %134, i32** %15, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = call i32 @lsecond(i32* %136)
  %138 = load i32*, i32** %15, align 8
  %139 = call i32 @linitial(i32* %138)
  %140 = call i32 @make_event_trigger_drop_view(i32 %137, i32 %139)
  %141 = call i32* @lappend(i32* %135, i32 %140)
  store i32* %141, i32** %5, align 8
  br label %142

142:                                              ; preds = %130, %126
  br label %143

143:                                              ; preds = %142, %114
  br label %144

144:                                              ; preds = %143, %98
  br label %170

145:                                              ; preds = %44
  %146 = getelementptr inbounds i32, i32* %50, i64 10
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @DatumGetArrayTypeP(i32 %147)
  %149 = call i32* @extract_addrnames(i32 %148)
  store i32* %149, i32** %16, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = load i32*, i32** %16, align 8
  %152 = call i32 @linitial(i32* %151)
  %153 = call i32 @make_event_trigger_drop_schema(i32 %152)
  %154 = call i32* @lappend(i32* %150, i32 %153)
  store i32* %154, i32** %5, align 8
  br label %170

155:                                              ; preds = %44
  %156 = getelementptr inbounds i32, i32* %50, i64 10
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @DatumGetArrayTypeP(i32 %157)
  %159 = call i32* @extract_addrnames(i32 %158)
  store i32* %159, i32** %17, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = load i32*, i32** %17, align 8
  %162 = call i32 @lthird(i32* %161)
  %163 = load i32*, i32** %17, align 8
  %164 = call i32 @linitial(i32* %163)
  %165 = load i32*, i32** %17, align 8
  %166 = call i32 @lsecond(i32* %165)
  %167 = call i32 @make_event_trigger_drop_trigger(i32 %162, i32 %164, i32 %166)
  %168 = call i32* @lappend(i32* %160, i32 %167)
  store i32* %168, i32** %5, align 8
  br label %170

169:                                              ; preds = %44
  br label %170

170:                                              ; preds = %169, %155, %145, %144, %93, %86
  %171 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %171)
  br label %38

172:                                              ; preds = %38
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @FreeExprContext(i32 %174, i32 0)
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 @FreeExecutorState(i32* %176)
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 @ExecDropSingleTupleTableSlot(i32* %178)
  %180 = load i32*, i32** %5, align 8
  ret i32* %180
}

declare dso_local i32* @CreateExecutorState(...) #1

declare dso_local i32 @InitFunctionCallInfoData(i64, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @MemSet(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @CreateExprContext(i32*) #1

declare dso_local i32 @FunctionCallInvoke(%struct.TYPE_7__*) #1

declare dso_local i32* @MakeSingleTupleTableSlot(i32) #1

declare dso_local i64 @tuplestore_gettupleslot(i32, i32, i32, i32*) #1

declare dso_local i32 @ExecFetchSlotTuple(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @heap_deform_tuple(i32, i32, i32*, i32*) #1

declare dso_local i32 @DatumGetObjectId(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @extract_addrnames(i32) #1

declare dso_local i32 @DatumGetArrayTypeP(i32) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @make_event_trigger_drop_table_constraint(i32, i32, i32) #1

declare dso_local i32 @lthird(i32*) #1

declare dso_local i32 @linitial(i32*) #1

declare dso_local i32 @lsecond(i32*) #1

declare dso_local i32 @make_event_trigger_drop_index(i32, i32) #1

declare dso_local i32 @make_event_trigger_drop_table(i32, i32) #1

declare dso_local i32 @make_event_trigger_drop_view(i32, i32) #1

declare dso_local i32 @make_event_trigger_drop_schema(i32) #1

declare dso_local i32 @make_event_trigger_drop_trigger(i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @FreeExprContext(i32, i32) #1

declare dso_local i32 @FreeExecutorState(i32*) #1

declare dso_local i32 @ExecDropSingleTupleTableSlot(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
