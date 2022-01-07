; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_SetSelection.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_listbox.c_LISTBOX_SetSelection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"cur_sel=%d index=%d notify=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@LBS_NOSEL = common dso_local global i32 0, align 4
@LB_ERR = common dso_local global i32 0, align 4
@LBS_MULTIPLESEL = common dso_local global i32 0, align 4
@LB_OKAY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ODA_SELECT = common dso_local global i32 0, align 4
@LBN_SELCHANGE = common dso_local global i32 0, align 4
@LBN_SELCANCEL = common dso_local global i32 0, align 4
@CBF_SELCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i64, i64)* @LISTBOX_SetSelection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LISTBOX_SetSelection(%struct.TYPE_10__* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i8* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LBS_NOSEL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @LB_ERR, align 4
  store i32 %30, i32* %5, align 4
  br label %153

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, -1
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %31
  %41 = load i32, i32* @LB_ERR, align 4
  store i32 %41, i32* %5, align 4
  br label %153

42:                                               ; preds = %34
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @LBS_MULTIPLESEL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @LISTBOX_SelectItemRange(%struct.TYPE_10__* %53, i32 0, i32 %56, i64 %57)
  store i32 %58, i32* %5, align 4
  br label %153

59:                                               ; preds = %49
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @LISTBOX_SelectItemRange(%struct.TYPE_10__* %60, i32 %61, i32 %62, i64 %63)
  store i32 %64, i32* %5, align 4
  br label %153

65:                                               ; preds = %42
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @LB_OKAY, align 4
  store i32 %73, i32* %5, align 4
  br label %153

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, -1
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* @FALSE, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 4
  br label %86

86:                                               ; preds = %77, %74
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i32, i32* @TRUE, align 4
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i32 %90, i32* %97, align 4
  br label %98

98:                                               ; preds = %89, %86
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @ODA_SELECT, align 4
  %105 = call i32 @LISTBOX_RepaintItem(%struct.TYPE_10__* %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %98
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @ODA_SELECT, align 4
  %116 = call i32 @LISTBOX_RepaintItem(%struct.TYPE_10__* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %106
  %118 = load i64, i64* %9, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %117
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, -1
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @LBN_SELCHANGE, align 4
  br label %133

131:                                              ; preds = %125
  %132 = load i32, i32* @LBN_SELCANCEL, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = call i32 @SEND_NOTIFICATION(%struct.TYPE_10__* %126, i32 %134)
  br label %150

136:                                              ; preds = %120, %117
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = icmp ne %struct.TYPE_9__* %139, null
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i32, i32* @CBF_SELCHANGE, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %142
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %141, %136
  br label %150

150:                                              ; preds = %149, %133
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* @LB_OKAY, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %151, %72, %59, %52, %40, %26
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @TRACE(i8*, i32, i32, i8*) #1

declare dso_local i32 @LISTBOX_SelectItemRange(%struct.TYPE_10__*, i32, i32, i64) #1

declare dso_local i32 @LISTBOX_RepaintItem(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @SEND_NOTIFICATION(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
