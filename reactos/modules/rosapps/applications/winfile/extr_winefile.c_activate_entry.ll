; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_activate_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_activate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_21__*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i8* }

@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@LB_FINDSTRING = common dso_local global i32 0, align 4
@LB_SETCURSEL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VK_MENU = common dso_local global i32 0, align 4
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_20__*, i32)* @activate_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @activate_entry(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %7, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %16 = icmp ne %struct.TYPE_21__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %183

18:                                               ; preds = %3
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %165

26:                                               ; preds = %18
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @LB_GETCURSEL, align 4
  %38 = call i32 @SendMessageW(i32 %36, i32 %37, i32 0, i32 0)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @scan_entry(%struct.TYPE_22__* %39, %struct.TYPE_21__* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %32, %26
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 46
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %183

63:                                               ; preds = %53, %44
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 46
  br i1 %71, label %72, label %101

72:                                               ; preds = %63
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 46
  br i1 %80, label %81, label %101

81:                                               ; preds = %72
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %81
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  store %struct.TYPE_21__* %96, %struct.TYPE_21__** %7, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %100 = call i32 @collapse_entry(%struct.TYPE_20__* %98, %struct.TYPE_21__* %99)
  br label %125

101:                                              ; preds = %81, %72, %63
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %110, align 8
  %112 = call i32 @collapse_entry(%struct.TYPE_20__* %107, %struct.TYPE_21__* %111)
  br label %154

113:                                              ; preds = %101
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = call i32 @expand_entry(%struct.TYPE_22__* %114, %struct.TYPE_21__* %118)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %153, label %124

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %90
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @LB_GETCURSEL, align 4
  %131 = call i32 @SendMessageW(i32 %129, i32 %130, i32 0, i32 0)
  store i32 %131, i32* %10, align 4
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @LB_FINDSTRING, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %139 = ptrtoint %struct.TYPE_21__* %138 to i32
  %140 = call i32 @SendMessageW(i32 %135, i32 %136, i32 %137, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @LB_SETCURSEL, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @SendMessageW(i32 %144, i32 %145, i32 %146, i32 0)
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @set_curdir(%struct.TYPE_22__* %148, %struct.TYPE_21__* %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %125, %113
  br label %154

154:                                              ; preds = %153, %106
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %155
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %160 = load i32, i32* @FALSE, align 4
  %161 = call i32 @calc_widths(%struct.TYPE_20__* %159, i32 %160)
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %163 = call i32 @set_header(%struct.TYPE_20__* %162)
  br label %164

164:                                              ; preds = %158, %155
  br label %183

165:                                              ; preds = %18
  %166 = load i32, i32* @VK_MENU, align 4
  %167 = call i64 @GetKeyState(i32 %166)
  %168 = icmp slt i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @show_properties_dlg(%struct.TYPE_21__* %170, i32 %173)
  br label %182

175:                                              ; preds = %165
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @SW_SHOWNORMAL, align 4
  %181 = call i32 @launch_entry(%struct.TYPE_21__* %176, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %175, %169
  br label %183

183:                                              ; preds = %17, %62, %182, %164
  ret void
}

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @scan_entry(%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @collapse_entry(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @expand_entry(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @set_curdir(%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @calc_widths(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @set_header(%struct.TYPE_20__*) #1

declare dso_local i64 @GetKeyState(i32) #1

declare dso_local i32 @show_properties_dlg(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @launch_entry(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
