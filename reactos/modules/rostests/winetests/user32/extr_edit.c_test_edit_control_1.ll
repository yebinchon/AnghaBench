; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_edit.c_test_edit_control_1.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_edit.c_test_edit_control_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@WM_KEYDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"EDIT: Single line\0A\00", align 1
@ES_AUTOHSCROLL = common dso_local global i32 0, align 4
@ES_AUTOVSCROLL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Wrong style expected 0xc0 got: 0x%x\0A\00", align 1
@WM_GETDLGCODE = common dso_local global i32 0, align 4
@DLGC_WANTCHARS = common dso_local global i32 0, align 4
@DLGC_HASSETSEL = common dso_local global i32 0, align 4
@DLGC_WANTARROWS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Expected DLGC_WANTCHARS | DLGC_HASSETSEL | DLGC_WANTARROWS got %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"EDIT: Single line want returns\0A\00", align 1
@ES_WANTRETURN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Wrong style expected 0x10c0 got: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"EDIT: Multiline line\0A\00", align 1
@ES_MULTILINE = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Wrong style expected 0xc4 got: 0x%x\0A\00", align 1
@DLGC_WANTALLKEYS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [86 x i8] c"Expected DLGC_WANTCHARS | DLGC_HASSETSEL | DLGC_WANTALLKEYS | DLGC_WANTARROWS got %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"EDIT: Multi line want returns\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Wrong style expected 0x10c4 got: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_edit_control_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_edit_control_1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_2__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @WM_KEYDOWN, align 4
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %9 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @create_editcontrol(i32 %10, i32 0)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @get_edit_style(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %16 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %17 = or i32 %15, %16
  %18 = icmp eq i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %42, %0
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 65535
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @WM_GETDLGCODE, align 4
  %30 = ptrtoint %struct.TYPE_2__* %2 to i32
  %31 = call i32 @SendMessageA(i32 %28, i32 %29, i32 0, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @DLGC_WANTCHARS, align 4
  %34 = load i32, i32* @DLGC_HASSETSEL, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @DLGC_WANTARROWS, align 4
  %37 = or i32 %35, %36
  %38 = icmp eq i32 %32, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %25
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %22

45:                                               ; preds = %22
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @DestroyWindow(i32 %46)
  %48 = call i32 @trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @ES_WANTRETURN, align 4
  %50 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @create_editcontrol(i32 %53, i32 0)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @get_edit_style(i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %59 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @ES_WANTRETURN, align 4
  %62 = or i32 %60, %61
  %63 = icmp eq i32 %57, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %87, %45
  %68 = load i32, i32* %3, align 4
  %69 = icmp slt i32 %68, 65535
  br i1 %69, label %70, label %90

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %1, align 4
  %74 = load i32, i32* @WM_GETDLGCODE, align 4
  %75 = ptrtoint %struct.TYPE_2__* %2 to i32
  %76 = call i32 @SendMessageA(i32 %73, i32 %74, i32 0, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @DLGC_WANTCHARS, align 4
  %79 = load i32, i32* @DLGC_HASSETSEL, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @DLGC_WANTARROWS, align 4
  %82 = or i32 %80, %81
  %83 = icmp eq i32 %77, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %70
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %67

90:                                               ; preds = %67
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @DestroyWindow(i32 %91)
  %93 = call i32 @trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32, i32* @ES_MULTILINE, align 4
  %95 = load i32, i32* @WS_VSCROLL, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @create_editcontrol(i32 %100, i32 0)
  store i32 %101, i32* %1, align 4
  %102 = load i32, i32* %1, align 4
  %103 = call i32 @get_edit_style(i32 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %106 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @ES_MULTILINE, align 4
  %109 = or i32 %107, %108
  %110 = icmp eq i32 %104, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %136, %90
  %115 = load i32, i32* %3, align 4
  %116 = icmp slt i32 %115, 65535
  br i1 %116, label %117, label %139

117:                                              ; preds = %114
  %118 = load i32, i32* %3, align 4
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %1, align 4
  %121 = load i32, i32* @WM_GETDLGCODE, align 4
  %122 = ptrtoint %struct.TYPE_2__* %2 to i32
  %123 = call i32 @SendMessageA(i32 %120, i32 %121, i32 0, i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @DLGC_WANTCHARS, align 4
  %126 = load i32, i32* @DLGC_HASSETSEL, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @DLGC_WANTALLKEYS, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @DLGC_WANTARROWS, align 4
  %131 = or i32 %129, %130
  %132 = icmp eq i32 %124, %131
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @ok(i32 %133, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.7, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %117
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %3, align 4
  br label %114

139:                                              ; preds = %114
  %140 = load i32, i32* %1, align 4
  %141 = call i32 @DestroyWindow(i32 %140)
  %142 = call i32 @trace(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %143 = load i32, i32* @ES_MULTILINE, align 4
  %144 = load i32, i32* @WS_VSCROLL, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @ES_WANTRETURN, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @create_editcontrol(i32 %151, i32 0)
  store i32 %152, i32* %1, align 4
  %153 = load i32, i32* %1, align 4
  %154 = call i32 @get_edit_style(i32 %153)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @ES_WANTRETURN, align 4
  %157 = load i32, i32* @ES_AUTOHSCROLL, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @ES_AUTOVSCROLL, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @ES_MULTILINE, align 4
  %162 = or i32 %160, %161
  %163 = icmp eq i32 %155, %162
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @ok(i32 %164, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %165)
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %189, %139
  %168 = load i32, i32* %3, align 4
  %169 = icmp slt i32 %168, 65535
  br i1 %169, label %170, label %192

170:                                              ; preds = %167
  %171 = load i32, i32* %3, align 4
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  store i32 %171, i32* %172, align 4
  %173 = load i32, i32* %1, align 4
  %174 = load i32, i32* @WM_GETDLGCODE, align 4
  %175 = ptrtoint %struct.TYPE_2__* %2 to i32
  %176 = call i32 @SendMessageA(i32 %173, i32 %174, i32 0, i32 %175)
  store i32 %176, i32* %4, align 4
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @DLGC_WANTCHARS, align 4
  %179 = load i32, i32* @DLGC_HASSETSEL, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @DLGC_WANTALLKEYS, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @DLGC_WANTARROWS, align 4
  %184 = or i32 %182, %183
  %185 = icmp eq i32 %177, %184
  %186 = zext i1 %185 to i32
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @ok(i32 %186, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.7, i64 0, i64 0), i32 %187)
  br label %189

189:                                              ; preds = %170
  %190 = load i32, i32* %3, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %3, align 4
  br label %167

192:                                              ; preds = %167
  %193 = load i32, i32* %1, align 4
  %194 = call i32 @DestroyWindow(i32 %193)
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @create_editcontrol(i32, i32) #1

declare dso_local i32 @get_edit_style(i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @SendMessageA(i32, i32, i32, i32) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
