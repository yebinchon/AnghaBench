; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_noresize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_toolbar.c_test_noresize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@TBSTATE_ENABLED = common dso_local global i32 0, align 4
@TOOLBARCLASSNAMEA = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@CCS_NORESIZE = common dso_local global i32 0, align 4
@TBSTYLE_WRAPABLE = common dso_local global i32 0, align 4
@hMainWnd = common dso_local global i32 0, align 4
@TB_BUTTONSTRUCTSIZE = common dso_local global i32 0, align 4
@TB_ADDBUTTONSA = common dso_local global i32 0, align 4
@TB_SETSTATE = common dso_local global i32 0, align 4
@TBSTATE_WRAP = common dso_local global i32 0, align 4
@TB_AUTOSIZE = common dso_local global i32 0, align 4
@TB_GETBUTTON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%d: got %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_noresize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_noresize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i32 10, i32* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %7 = load i32, i32* @TBSTATE_ENABLED, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 6
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @TOOLBARCLASSNAMEA, align 4
  %16 = load i32, i32* @WS_CHILD, align 4
  %17 = load i32, i32* @WS_VISIBLE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CCS_NORESIZE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @TBSTYLE_WRAPABLE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @hMainWnd, align 4
  %24 = call i32 @GetModuleHandleA(i32* null)
  %25 = call i32 @CreateWindowExA(i32 0, i32 %15, i32* null, i32 %22, i32 0, i32 0, i32 100, i32 20, i32 %23, i32 5, i32 %24, i32* null)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @TB_BUTTONSTRUCTSIZE, align 4
  %28 = call i32 @SendMessageA(i32 %26, i32 %27, i32 36, i32 0)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %40, %0
  %30 = load i32, i32* %2, align 4
  %31 = icmp slt i32 %30, 30
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 10, %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @TB_ADDBUTTONSA, align 4
  %38 = ptrtoint %struct.TYPE_4__* %3 to i32
  %39 = call i32 @SendMessageA(i32 %36, i32 %37, i32 1, i32 %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %29

43:                                               ; preds = %29
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @TB_SETSTATE, align 4
  %46 = load i32, i32* @TBSTATE_WRAP, align 4
  %47 = load i32, i32* @TBSTATE_ENABLED, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @SendMessageA(i32 %44, i32 %45, i32 10, i32 %48)
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* @TB_AUTOSIZE, align 4
  %52 = call i32 @SendMessageA(i32 %50, i32 %51, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %88, %43
  %54 = load i32, i32* %2, align 4
  %55 = icmp slt i32 %54, 30
  br i1 %55, label %56, label %91

56:                                               ; preds = %53
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* @TB_GETBUTTON, align 4
  %59 = load i32, i32* %2, align 4
  %60 = ptrtoint %struct.TYPE_4__* %3 to i32
  %61 = call i32 @SendMessageA(i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %2, align 4
  %63 = srem i32 %62, 4
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %77

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TBSTATE_WRAP, align 4
  %69 = load i32, i32* @TBSTATE_ENABLED, align 4
  %70 = or i32 %68, %69
  %71 = icmp eq i32 %67, %70
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %2, align 4
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %75)
  br label %87

77:                                               ; preds = %56
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @TBSTATE_ENABLED, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %2, align 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %77, %65
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %2, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %2, align 4
  br label %53

91:                                               ; preds = %53
  %92 = load i32, i32* @hMainWnd, align 4
  %93 = load i32, i32* @FALSE, align 4
  %94 = call i32 @MoveWindow(i32 %92, i32 0, i32 0, i32 400, i32 200, i32 %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %130, %91
  %96 = load i32, i32* %2, align 4
  %97 = icmp slt i32 %96, 30
  br i1 %97, label %98, label %133

98:                                               ; preds = %95
  %99 = load i32, i32* %1, align 4
  %100 = load i32, i32* @TB_GETBUTTON, align 4
  %101 = load i32, i32* %2, align 4
  %102 = ptrtoint %struct.TYPE_4__* %3 to i32
  %103 = call i32 @SendMessageA(i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %2, align 4
  %105 = srem i32 %104, 4
  %106 = icmp eq i32 %105, 3
  br i1 %106, label %107, label %119

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @TBSTATE_WRAP, align 4
  %111 = load i32, i32* @TBSTATE_ENABLED, align 4
  %112 = or i32 %110, %111
  %113 = icmp eq i32 %109, %112
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %2, align 4
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ok(i32 %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %117)
  br label %129

119:                                              ; preds = %98
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @TBSTATE_ENABLED, align 4
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %2, align 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ok(i32 %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %125, i32 %127)
  br label %129

129:                                              ; preds = %119, %107
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %2, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %2, align 4
  br label %95

133:                                              ; preds = %95
  %134 = load i32, i32* %1, align 4
  %135 = load i32, i32* @TB_AUTOSIZE, align 4
  %136 = call i32 @SendMessageA(i32 %134, i32 %135, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %172, %133
  %138 = load i32, i32* %2, align 4
  %139 = icmp slt i32 %138, 30
  br i1 %139, label %140, label %175

140:                                              ; preds = %137
  %141 = load i32, i32* %1, align 4
  %142 = load i32, i32* @TB_GETBUTTON, align 4
  %143 = load i32, i32* %2, align 4
  %144 = ptrtoint %struct.TYPE_4__* %3 to i32
  %145 = call i32 @SendMessageA(i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %2, align 4
  %147 = srem i32 %146, 4
  %148 = icmp eq i32 %147, 3
  br i1 %148, label %149, label %161

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @TBSTATE_WRAP, align 4
  %153 = load i32, i32* @TBSTATE_ENABLED, align 4
  %154 = or i32 %152, %153
  %155 = icmp eq i32 %151, %154
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %2, align 4
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @ok(i32 %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %157, i32 %159)
  br label %171

161:                                              ; preds = %140
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @TBSTATE_ENABLED, align 4
  %165 = icmp eq i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %2, align 4
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %167, i32 %169)
  br label %171

171:                                              ; preds = %161, %149
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %2, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %2, align 4
  br label %137

175:                                              ; preds = %137
  %176 = load i32, i32* %1, align 4
  %177 = call i32 @DestroyWindow(i32 %176)
  ret void
}

declare dso_local i32 @CreateWindowExA(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

declare dso_local i32 @MoveWindow(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
