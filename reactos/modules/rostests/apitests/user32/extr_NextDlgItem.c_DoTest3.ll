; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_NextDlgItem.c_DoTest3.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_NextDlgItem.c_DoTest3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@rad1 = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i64 0, align 8
@rad5 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@rad2 = common dso_local global i32 0, align 4
@BST_UNCHECKED = common dso_local global i64 0, align 8
@rad3 = common dso_local global i32 0, align 4
@rad6 = common dso_local global i32 0, align 4
@rad7 = common dso_local global i32 0, align 4
@WM_LBUTTONDOWN = common dso_local global i32 0, align 4
@MK_LBUTTON = common dso_local global i32 0, align 4
@WM_LBUTTONUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @DoTest3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoTest3(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @rad1, align 4
  %9 = load i64, i64* @BST_CHECKED, align 8
  %10 = call i32 @CheckDlgButton(i32 %7, i32 %8, i64 %9)
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @rad5, align 4
  %13 = load i64, i64* @BST_CHECKED, align 8
  %14 = call i32 @CheckDlgButton(i32 %11, i32 %12, i64 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @rad1, align 4
  %17 = call i64 @IsDlgButtonChecked(i32 %15, i32 %16)
  %18 = load i64, i64* @BST_CHECKED, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @rad2, align 4
  %24 = call i64 @IsDlgButtonChecked(i32 %22, i32 %23)
  %25 = load i64, i64* @BST_UNCHECKED, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @rad3, align 4
  %31 = call i64 @IsDlgButtonChecked(i32 %29, i32 %30)
  %32 = load i64, i64* @BST_UNCHECKED, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @rad5, align 4
  %38 = call i64 @IsDlgButtonChecked(i32 %36, i32 %37)
  %39 = load i64, i64* @BST_CHECKED, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @rad6, align 4
  %45 = call i64 @IsDlgButtonChecked(i32 %43, i32 %44)
  %46 = load i64, i64* @BST_UNCHECKED, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @rad7, align 4
  %52 = call i64 @IsDlgButtonChecked(i32 %50, i32 %51)
  %53 = load i64, i64* @BST_UNCHECKED, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @rad1, align 4
  %59 = call i32 @GetDlgItem(i32 %57, i32 %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i64 @GetCtrlCenter(i32 %60)
  %62 = bitcast %struct.TYPE_3__* %5 to i64*
  store i64 %61, i64* %62, align 4
  %63 = bitcast %struct.TYPE_3__* %4 to i8*
  %64 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 8, i1 false)
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @WM_LBUTTONDOWN, align 4
  %67 = load i32, i32* @MK_LBUTTON, align 4
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @MAKELPARAM(i32 %69, i32 %71)
  %73 = call i32 @SendMessage(i32 %65, i32 %66, i32 %67, i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @WM_LBUTTONUP, align 4
  %76 = load i32, i32* @MK_LBUTTON, align 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @MAKELPARAM(i32 %78, i32 %80)
  %82 = call i32 @SendMessage(i32 %74, i32 %75, i32 %76, i32 %81)
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @rad1, align 4
  %85 = call i64 @IsDlgButtonChecked(i32 %83, i32 %84)
  %86 = load i64, i64* @BST_CHECKED, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* @rad2, align 4
  %92 = call i64 @IsDlgButtonChecked(i32 %90, i32 %91)
  %93 = load i64, i64* @BST_UNCHECKED, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* %2, align 4
  %98 = load i32, i32* @rad3, align 4
  %99 = call i64 @IsDlgButtonChecked(i32 %97, i32 %98)
  %100 = load i64, i64* @BST_UNCHECKED, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* @rad5, align 4
  %106 = call i64 @IsDlgButtonChecked(i32 %104, i32 %105)
  %107 = load i64, i64* @BST_UNCHECKED, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @rad6, align 4
  %113 = call i64 @IsDlgButtonChecked(i32 %111, i32 %112)
  %114 = load i64, i64* @BST_UNCHECKED, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @ok(i32 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* @rad7, align 4
  %120 = call i64 @IsDlgButtonChecked(i32 %118, i32 %119)
  %121 = load i64, i64* @BST_UNCHECKED, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @ok(i32 %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* @rad5, align 4
  %127 = call i32 @GetDlgItem(i32 %125, i32 %126)
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* %3, align 4
  %129 = call i64 @GetCtrlCenter(i32 %128)
  %130 = bitcast %struct.TYPE_3__* %6 to i64*
  store i64 %129, i64* %130, align 4
  %131 = bitcast %struct.TYPE_3__* %4 to i8*
  %132 = bitcast %struct.TYPE_3__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %131, i8* align 4 %132, i64 8, i1 false)
  %133 = load i32, i32* %3, align 4
  %134 = load i32, i32* @WM_LBUTTONDOWN, align 4
  %135 = load i32, i32* @MK_LBUTTON, align 4
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @MAKELPARAM(i32 %137, i32 %139)
  %141 = call i32 @SendMessage(i32 %133, i32 %134, i32 %135, i32 %140)
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @WM_LBUTTONUP, align 4
  %144 = load i32, i32* @MK_LBUTTON, align 4
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @MAKELPARAM(i32 %146, i32 %148)
  %150 = call i32 @SendMessage(i32 %142, i32 %143, i32 %144, i32 %149)
  %151 = load i32, i32* %2, align 4
  %152 = load i32, i32* @rad1, align 4
  %153 = call i64 @IsDlgButtonChecked(i32 %151, i32 %152)
  %154 = load i64, i64* @BST_UNCHECKED, align 8
  %155 = icmp eq i64 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @ok(i32 %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %158 = load i32, i32* %2, align 4
  %159 = load i32, i32* @rad2, align 4
  %160 = call i64 @IsDlgButtonChecked(i32 %158, i32 %159)
  %161 = load i64, i64* @BST_UNCHECKED, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @ok(i32 %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %165 = load i32, i32* %2, align 4
  %166 = load i32, i32* @rad3, align 4
  %167 = call i64 @IsDlgButtonChecked(i32 %165, i32 %166)
  %168 = load i64, i64* @BST_UNCHECKED, align 8
  %169 = icmp eq i64 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @ok(i32 %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %172 = load i32, i32* %2, align 4
  %173 = load i32, i32* @rad5, align 4
  %174 = call i64 @IsDlgButtonChecked(i32 %172, i32 %173)
  %175 = load i64, i64* @BST_CHECKED, align 8
  %176 = icmp eq i64 %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @ok(i32 %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %179 = load i32, i32* %2, align 4
  %180 = load i32, i32* @rad6, align 4
  %181 = call i64 @IsDlgButtonChecked(i32 %179, i32 %180)
  %182 = load i64, i64* @BST_UNCHECKED, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @ok(i32 %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %186 = load i32, i32* %2, align 4
  %187 = load i32, i32* @rad7, align 4
  %188 = call i64 @IsDlgButtonChecked(i32 %186, i32 %187)
  %189 = load i64, i64* @BST_UNCHECKED, align 8
  %190 = icmp eq i64 %188, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @ok(i32 %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @CheckDlgButton(i32, i32, i64) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i64 @IsDlgButtonChecked(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @GetCtrlCenter(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @MAKELPARAM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
