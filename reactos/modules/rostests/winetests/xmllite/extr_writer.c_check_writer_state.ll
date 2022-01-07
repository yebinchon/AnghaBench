; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_check_writer_state.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xmllite/extr_writer.c_check_writer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check_writer_state.aW = internal constant [2 x i8] c"a\00", align 1
@.str = private unnamed_addr constant [29 x i8] c"got 0x%08x, expected 0x%08x\0A\00", align 1
@XmlStandalone_Omit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @check_writer_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_writer_state(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @IXmlWriter_WriteAttributeString(i32* %6, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0))
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @IXmlWriter_WriteCData(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0))
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0), align 1
  %26 = call i64 @IXmlWriter_WriteCharEntity(i32* %24, i8 signext %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @IXmlWriter_WriteChars(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0), i32 1)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i64 @IXmlWriter_WriteComment(i32* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0))
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @IXmlWriter_WriteElementString(i32* %52, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0))
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %58, i64 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i64 @IXmlWriter_WriteEndDocument(i32* %61)
  store i64 %62, i64* %5, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %67, i64 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = call i64 @IXmlWriter_WriteEndElement(i32* %70)
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* %4, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %76, i64 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = call i64 @IXmlWriter_WriteEntityRef(i32* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0))
  store i64 %80, i64* %5, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %4, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %85, i64 %86)
  %88 = load i32*, i32** %3, align 8
  %89 = call i64 @IXmlWriter_WriteFullEndElement(i32* %88)
  store i64 %89, i64* %5, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* %4, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %94, i64 %95)
  %97 = load i32*, i32** %3, align 8
  %98 = call i64 @IXmlWriter_WriteName(i32* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0))
  store i64 %98, i64* %5, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* %4, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* %4, align 8
  %105 = call i32 @ok(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %103, i64 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = call i64 @IXmlWriter_WriteNmToken(i32* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0))
  store i64 %107, i64* %5, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* %4, align 8
  %110 = icmp eq i64 %108, %109
  %111 = zext i1 %110 to i32
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* %4, align 8
  %114 = call i32 @ok(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %112, i64 %113)
  %115 = load i32*, i32** %3, align 8
  %116 = call i64 @IXmlWriter_WriteProcessingInstruction(i32* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0))
  store i64 %116, i64* %5, align 8
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* %4, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* %4, align 8
  %123 = call i32 @ok(i32 %120, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %121, i64 %122)
  %124 = load i32*, i32** %3, align 8
  %125 = call i64 @IXmlWriter_WriteQualifiedName(i32* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0), i32* null)
  store i64 %125, i64* %5, align 8
  %126 = load i64, i64* %5, align 8
  %127 = load i64, i64* %4, align 8
  %128 = icmp eq i64 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* %4, align 8
  %132 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %130, i64 %131)
  %133 = load i32*, i32** %3, align 8
  %134 = call i64 @IXmlWriter_WriteRaw(i32* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0))
  store i64 %134, i64* %5, align 8
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* %4, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i64, i64* %5, align 8
  %140 = load i64, i64* %4, align 8
  %141 = call i32 @ok(i32 %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %139, i64 %140)
  %142 = load i32*, i32** %3, align 8
  %143 = call i64 @IXmlWriter_WriteRawChars(i32* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0), i32 1)
  store i64 %143, i64* %5, align 8
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* %4, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i64, i64* %5, align 8
  %149 = load i64, i64* %4, align 8
  %150 = call i32 @ok(i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %148, i64 %149)
  %151 = load i32*, i32** %3, align 8
  %152 = load i32, i32* @XmlStandalone_Omit, align 4
  %153 = call i64 @IXmlWriter_WriteStartDocument(i32* %151, i32 %152)
  store i64 %153, i64* %5, align 8
  %154 = load i64, i64* %5, align 8
  %155 = load i64, i64* %4, align 8
  %156 = icmp eq i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load i64, i64* %5, align 8
  %159 = load i64, i64* %4, align 8
  %160 = call i32 @ok(i32 %157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %158, i64 %159)
  %161 = load i32*, i32** %3, align 8
  %162 = call i64 @IXmlWriter_WriteStartElement(i32* %161, i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0), i32* null)
  store i64 %162, i64* %5, align 8
  %163 = load i64, i64* %5, align 8
  %164 = load i64, i64* %4, align 8
  %165 = icmp eq i64 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i64, i64* %5, align 8
  %168 = load i64, i64* %4, align 8
  %169 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %167, i64 %168)
  %170 = load i32*, i32** %3, align 8
  %171 = call i64 @IXmlWriter_WriteString(i32* %170, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @check_writer_state.aW, i64 0, i64 0))
  store i64 %171, i64* %5, align 8
  %172 = load i64, i64* %5, align 8
  %173 = load i64, i64* %4, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load i64, i64* %5, align 8
  %177 = load i64, i64* %4, align 8
  %178 = call i32 @ok(i32 %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %176, i64 %177)
  ret void
}

declare dso_local i64 @IXmlWriter_WriteAttributeString(i32*, i32*, i8*, i32*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64, i64) #1

declare dso_local i64 @IXmlWriter_WriteCData(i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteCharEntity(i32*, i8 signext) #1

declare dso_local i64 @IXmlWriter_WriteChars(i32*, i8*, i32) #1

declare dso_local i64 @IXmlWriter_WriteComment(i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteElementString(i32*, i32*, i8*, i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteEndDocument(i32*) #1

declare dso_local i64 @IXmlWriter_WriteEndElement(i32*) #1

declare dso_local i64 @IXmlWriter_WriteEntityRef(i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteFullEndElement(i32*) #1

declare dso_local i64 @IXmlWriter_WriteName(i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteNmToken(i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteProcessingInstruction(i32*, i8*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteQualifiedName(i32*, i8*, i32*) #1

declare dso_local i64 @IXmlWriter_WriteRaw(i32*, i8*) #1

declare dso_local i64 @IXmlWriter_WriteRawChars(i32*, i8*, i32) #1

declare dso_local i64 @IXmlWriter_WriteStartDocument(i32*, i32) #1

declare dso_local i64 @IXmlWriter_WriteStartElement(i32*, i32*, i8*, i32*) #1

declare dso_local i64 @IXmlWriter_WriteString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
