; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_mask_control_change.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_dialog.c_msi_mask_control_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi_maskedit_info = type { i32, i64, %struct.TYPE_4__*, i64*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@WM_GETTEXTLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"can't fit control %d text into template\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%d/%d controls were good\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Set property %s to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msi_maskedit_info*)* @msi_mask_control_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msi_mask_control_change(%struct.msi_maskedit_info* %0) #0 {
  %2 = alloca %struct.msi_maskedit_info*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.msi_maskedit_info* %0, %struct.msi_maskedit_info** %2, align 8
  %8 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %9 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i64* @msi_alloc(i32 %14)
  store i64* %15, i64** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %158, %1
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %19 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %161

22:                                               ; preds = %16
  %23 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %24 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %23, i32 0, i32 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %58

31:                                               ; preds = %22
  %32 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %33 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %32, i32 0, i32 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @WM_GETTEXTLENGTH, align 4
  %40 = call i64 @SendMessageW(i32 %38, i32 %39, i32 0, i32 0)
  store i64 %40, i64* %7, align 8
  %41 = load i64*, i64** %3, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  %44 = mul i64 %43, 4
  %45 = call i64* @msi_realloc(i64* %41, i64 %44)
  store i64* %45, i64** %3, align 8
  %46 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %47 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %46, i32 0, i32 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64*, i64** %3, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = call i64 @GetWindowTextW(i32 %52, i64* %53, i32 %56)
  br label %157

58:                                               ; preds = %22
  %59 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %60 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %59, i32 0, i32 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %66, %67
  %69 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %70 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = icmp ugt i64 %68, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %75)
  br label %161

77:                                               ; preds = %58
  %78 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %79 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %78, i32 0, i32 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @msi_mask_editable(i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %121, label %87

87:                                               ; preds = %77
  store i64 0, i64* %6, align 8
  br label %88

88:                                               ; preds = %112, %87
  %89 = load i64, i64* %6, align 8
  %90 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %91 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %90, i32 0, i32 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load i64, i64* %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = zext i32 %96 to i64
  %98 = icmp ult i64 %89, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %88
  %100 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %101 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %100, i32 0, i32 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i64, i64* %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %3, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %108, %109
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  store i64 %106, i64* %111, align 8
  br label %112

112:                                              ; preds = %99
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %6, align 8
  br label %88

115:                                              ; preds = %88
  %116 = load i64*, i64** %3, align 8
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* %6, align 8
  %119 = add i64 %117, %118
  %120 = getelementptr inbounds i64, i64* %116, i64 %119
  store i64 0, i64* %120, align 8
  br label %153

121:                                              ; preds = %77
  %122 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %123 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %122, i32 0, i32 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load i64, i64* %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i64*, i64** %3, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %133 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %132, i32 0, i32 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = load i64, i64* %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add i32 %138, 1
  %140 = call i64 @GetWindowTextW(i32 %128, i64* %131, i32 %139)
  store i64 %140, i64* %6, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %143 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %142, i32 0, i32 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = load i64, i64* %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = zext i32 %148 to i64
  %150 = icmp ne i64 %141, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %121
  br label %161

152:                                              ; preds = %121
  br label %153

153:                                              ; preds = %152, %115
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* %5, align 8
  %156 = add i64 %155, %154
  store i64 %156, i64* %5, align 8
  br label %157

157:                                              ; preds = %153, %31
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %4, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %4, align 8
  br label %16

161:                                              ; preds = %151, %74, %16
  %162 = load i64, i64* %4, align 8
  %163 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %164 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %162, i64 %165)
  %167 = load i64, i64* %4, align 8
  %168 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %169 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %167, %170
  br i1 %171, label %172, label %194

172:                                              ; preds = %161
  %173 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %174 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %173, i32 0, i32 3
  %175 = load i64*, i64** %174, align 8
  %176 = call i64 @debugstr_w(i64* %175)
  %177 = load i64*, i64** %3, align 8
  %178 = call i64 @debugstr_w(i64* %177)
  %179 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %176, i64 %178)
  %180 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %181 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %180, i32 0, i32 2
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %186 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %185, i32 0, i32 3
  %187 = load i64*, i64** %186, align 8
  %188 = load i64*, i64** %3, align 8
  %189 = call i32 @msi_dialog_set_property(i32 %184, i64* %187, i64* %188)
  %190 = load %struct.msi_maskedit_info*, %struct.msi_maskedit_info** %2, align 8
  %191 = getelementptr inbounds %struct.msi_maskedit_info, %struct.msi_maskedit_info* %190, i32 0, i32 2
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = call i32 @msi_dialog_evaluate_control_conditions(%struct.TYPE_4__* %192)
  br label %194

194:                                              ; preds = %172, %161
  %195 = load i64*, i64** %3, align 8
  %196 = call i32 @msi_free(i64* %195)
  ret void
}

declare dso_local i64* @msi_alloc(i32) #1

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i64* @msi_realloc(i64*, i64) #1

declare dso_local i64 @GetWindowTextW(i32, i64*, i32) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @msi_mask_editable(i64) #1

declare dso_local i32 @TRACE(i8*, i64, i64) #1

declare dso_local i64 @debugstr_w(i64*) #1

declare dso_local i32 @msi_dialog_set_property(i32, i64*, i64*) #1

declare dso_local i32 @msi_dialog_evaluate_control_conditions(%struct.TYPE_4__*) #1

declare dso_local i32 @msi_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
